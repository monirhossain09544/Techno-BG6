import json, sys
sys.stdout.reconfigure(encoding="utf-8")
p = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\.system_generated\logs\transcript.jsonl"
with open(p, encoding="utf-8") as f:
    for line in f:
        line = line.strip()
        if not line: continue
        try:
            obj = json.loads(line)
        except Exception:
            continue
        idx = obj.get("step_index", 0)
        if 8638 <= idx <= 8966:
            t = obj.get("type")
            if t in ("USER_INPUT", "PLANNER_RESPONSE"):
                print(f"=== [{idx}] {t} ===")
                if obj.get("content"):
                    print(obj["content"][:1500])
                for tc in obj.get("tool_calls", []):
                    print("TOOL:", tc.get("name"), str(tc.get("arguments"))[:600])
