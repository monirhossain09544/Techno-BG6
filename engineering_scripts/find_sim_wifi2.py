import json, sys
sys.stdout.reconfigure(encoding="utf-8")
p = r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\.system_generated\logs\transcript.jsonl"
with open(p, encoding="utf-8") as f:
    for line in f:
        obj = json.loads(line)
        if obj.get("type") == "USER_INPUT" and obj.get("step_index", 0) >= 2824:
            c = obj.get("content", "").replace("<USER_REQUEST>\n", "").split("</USER_REQUEST>")[0].strip()
            print(f"[{obj.get('step_index')}] {c[:200]}")
