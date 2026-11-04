import json
p = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\.system_generated\logs\transcript_full.jsonl"
out = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\scratch\sim_wifi_8697_8928.txt"
with open(p, encoding="utf-8") as f, open(out, "w", encoding="utf-8") as of:
    for line in f:
        line = line.strip()
        if not line: continue
        try:
            obj = json.loads(line)
        except Exception:
            continue
        idx = obj.get("step_index", 0)
        if 8697 <= idx <= 8928 and obj.get("type") == "PLANNER_RESPONSE":
            for tc in obj.get("tool_calls", []):
                if tc.get("name") == "run_command":
                    of.write(f"=== STEP {idx}: {tc.get('args', {}).get('toolSummary')} ===\n")
                    of.write(tc.get("args", {}).get("CommandLine", "") + "\n\n")
