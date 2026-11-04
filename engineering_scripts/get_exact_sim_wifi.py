import json
p = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\.system_generated\logs\transcript_full.jsonl"
out = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\exact_sim_wifi_code.txt"
with open(p, encoding="utf-8") as f, open(out, "w", encoding="utf-8") as of:
    for line in f:
        line = line.strip()
        if not line: continue
        try:
            obj = json.loads(line)
        except Exception:
            continue
        idx = obj.get("step_index", 0)
        if idx in (8691, 8693, 8695, 8929, 8939, 8941, 8947, 8949, 8955, 8957, 8961):
            of.write(f"=== STEP {idx} ===\n")
            of.write(json.dumps(obj, indent=2, ensure_ascii=False) + "\n")
