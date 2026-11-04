import urllib.request
import re

headers = {'User-Agent': 'Mozilla/5.0'}
for fid in [
    "1YYVcAiRckrcUsaI35BrYy1yccIVHKdG3",
    "1S2Saavl-5XXhrxlgwXvUCNuEIWBjKVaR",
    "1uP0jG0sVvCgShf-EekyVocS3rzqtNAC-",
    "1gjJkSKRHJGM_0bhdfzdv62ilgusJMmP6",
]:
    url = f"https://drive.google.com/file/d/{fid}/view"
    try:
        html = urllib.request.urlopen(urllib.request.Request(url, headers=headers), timeout=10).read().decode('utf-8', errors='ignore')
        title = re.search(r'<title>([^<]+)</title>', html)
        print(fid, "->", title.group(1) if title else "No title")
    except Exception as e:
        print(fid, "->", e)
