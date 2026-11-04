
import hashlib

chunk_size = 4194304
with open("/nvme0n1-disk/infinity_x/infinity_x_bg6_ready.img", "rb") as f:
    idx = 0
    while True:
        buf = f.read(chunk_size)
        if not buf:
            break
        h = hashlib.md5(buf).hexdigest()
        print(f"{idx}:{h}:{len(buf)}")
        idx += 1
