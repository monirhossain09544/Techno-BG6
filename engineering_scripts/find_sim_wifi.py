import json, glob

paths = [
    r"C:\Users\Monir\.gemini\antigravity\brain\12baa5e2-9f3b-42cf-8daf-03e417b7a026\.system_generated\logs\transcript.jsonl",
    r"C:\Users\Monir\.gemini\antigravity\brain\4f688e75-66ed-4917-becd-55a7654b2163\.system_generated\logs\transcript.jsonl",
    r"C:\Users\Monir\.gemini\antigravity\brain\6c3e3a1d-bb8e-4524-9eb7-1e30b9260ff2\.system_generated\logs\transcript.jsonl",
    r"C:\Users\Monir\.gemini\antigravity\brain\0b1a6ea6-1274-49d8-bbea-6a9e05de29dc\.system_generated\logs\transcript.jsonl",
    r"C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\.system_generated\logs\transcript.jsonl",
]

for p in paths:
    print("===", p.split("\\")[-3], "===")
    try:
        with open(p, encoding="utf-8") as f:
            for line in f:
                obj = json.loads(line)
                if obj.get("type") == "USER_INPUT":
                    print(f"[{obj.get('step_index')}] {obj.get('content', '')[:300]}")
    except Exception as e:
        print("Err:", e)
