import json
p = r'C:\Users\Monir\.gemini\antigravity\brain\3958b605-423b-42d2-aef1-c01e0058e64f\.system_generated\logs\transcript.jsonl'
with open(p, 'r', encoding='utf-8') as f:
    for line in f:
        obj = json.loads(line)
        idx = obj.get('step_index', 0)
        if (15654 <= idx <= 15679) or (16770 <= idx <= 16840):
            print(f"=== STEP {idx} ({obj.get('type')}) ===")
            if obj.get('tool_calls'):
                for tc in obj['tool_calls']:
                    print("  TOOL:", tc.get('name'), tc.get('args'))
            if obj.get('content'):
                print("  CONTENT:", str(obj.get('content'))[:1200])
