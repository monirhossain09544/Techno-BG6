import json
p = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\.system_generated\logs\transcript_full.jsonl"
out = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\sim_wifi_tools_utf8.txt"
with open(p, encoding="utf-8") as f, open(out, "w", encoding="utf-8") as of:
    for line in f:
        line = line.strip()
        if not line: continue
        try:
            obj = json.loads(line)
        except Exception:
            continue
        idx = obj.get("step_index", 0)
        if 8680 <= idx <= 8965:
            of.write(f"=== [{idx}] {obj.get('type')} ===\n")
            if obj.get("content"):
                of.write(obj["content"] + "\n")
            for tc in obj.get("tool_calls", []):
                of.write(f"TOOL {tc.get('name')}: {json.dumps(tc.get('arguments'), ensure_ascii=False)}\n")
