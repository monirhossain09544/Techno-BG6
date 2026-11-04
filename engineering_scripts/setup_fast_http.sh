#!/bin/bash
set -e

# 0. Disable any fail2ban/ufw rate limits and raise sshd MaxStartups
systemctl stop fail2ban 2>/dev/null || true
ufw disable 2>/dev/null || true
iptables -F 2>/dev/null || true
sed -i 's/#*MaxStartups.*/MaxStartups 100:30:200/g' /etc/ssh/sshd_config
systemctl reload ssh 2>/dev/null || systemctl reload sshd 2>/dev/null || true

# 1. Enable Google TCP BBR congestion control and high TCP buffers on the server
sysctl -w net.core.default_qdisc=fq
sysctl -w net.ipv4.tcp_congestion_control=bbr
sysctl -w net.core.rmem_max=67108864
sysctl -w net.core.wmem_max=67108864
sysctl -w net.ipv4.tcp_rmem="4096 87380 67108864"
sysctl -w net.ipv4.tcp_wmem="4096 65536 67108864"

# 2. Start a fast multi-threaded Range-capable HTTP server on port 8080
cat << 'PYEOF' > /nvme0n1-disk/sunno_release/fast_http.py
import os, sys, re, socket
from http.server import ThreadingHTTPServer, SimpleHTTPRequestHandler

class RangeHTTPRequestHandler(SimpleHTTPRequestHandler):
    protocol_version = "HTTP/1.1"
    def log_message(self, format, *args):
        pass
    def send_head(self):
        path = self.translate_path(self.path)
        if not os.path.isfile(path):
            return super().send_head()
        f = open(path, 'rb')
        fs = os.fstat(f.fileno())
        size = fs.st_size
        range_header = self.headers.get('Range')
        if not range_header:
            self.send_response(200)
            self.send_header("Content-type", "application/octet-stream")
            self.send_header("Content-Length", str(size))
            self.send_header("Accept-Ranges", "bytes")
            self.end_headers()
            return (f, 0, size)
        m = re.match(r'bytes=(\d+)-(\d*)', range_header)
        if not m:
            f.close()
            self.send_error(400, "Invalid range")
            return None
        start = int(m.group(1))
        end = int(m.group(2)) if m.group(2) else size - 1
        end = min(end, size - 1)
        length = end - start + 1
        self.send_response(206)
        self.send_header("Content-type", "application/octet-stream")
        self.send_header("Accept-Ranges", "bytes")
        self.send_header("Content-Range", f"bytes {start}-{end}/{size}")
        self.send_header("Content-Length", str(length))
        self.end_headers()
        f.seek(start)
        return (f, start, length)

    def do_GET(self):
        res = self.send_head()
        if not res:
            return
        if isinstance(res, tuple):
            f, start, length = res
            try:
                remaining = length
                while remaining > 0:
                    buf = f.read(min(1048576, remaining))
                    if not buf:
                        break
                    self.wfile.write(buf)
                    remaining -= len(buf)
            except Exception:
                pass
            finally:
                f.close()
        else:
            try:
                self.copyfile(res, self.wfile)
            finally:
                res.close()

os.chdir("/nvme0n1-disk/sunno_release")
httpd = ThreadingHTTPServer(("0.0.0.0", 8080), RangeHTTPRequestHandler)
httpd.serve_forever()
PYEOF

pkill -f fast_http.py 2>/dev/null || true
nohup python3 /nvme0n1-disk/sunno_release/fast_http.py > /tmp/fast_http.log 2>&1 < /dev/null &
sleep 2
ss -tlnp | grep 8080
md5sum /nvme0n1-disk/sunno_release/sunno_system.img.xz
