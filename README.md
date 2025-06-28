> Note: This repository is MIT licensed, but it references external tools licensed under GPL-3.0 and MIT. Users must comply with each tool's individual license when using or modifying them.

SS & SpiderFoot Offensive Toolkit (Linux Setup)

This repository provides a one-stop script to clone and prepare offensive XSS and OSINT tools on **Linux** for **ethical hacking and red team simulation**.

Included Tools

XSStrike
> Advanced XSS detection and fuzzing engine  
GitHub: https://github.com/s0md3v/XSStrike

Dalfox
> Fast and powerful XSS scanner built in Go  
GitHub: https://github.com/hahwul/dalfox

SpiderFoot
> Automated OSINT collection and reconnaissance  
GitHub: https://github.com/smicallef/spiderfoot



Install All Tools (Clone + Setup)

```bash
git clone https://github.com/YOUR_USERNAME/xss-spiderfoot-toolkit.git
cd xss-spiderfoot-toolkit
chmod +x setup.sh
./setup.sh
```


How to Use

### XSStrike
```bash
cd XSStrike
python3 xsstrike.py -u "http://victim.com/vuln?input=test"
```

### Dalfox
```bash
dalfox url "http://victim.com/xss?query=test"
```

### SpiderFoot
```bash
cd spiderfoot
python3 sf.py -l 127.0.0.1:5001
```

Open browser to: [http://127.0.0.1:5001](http://127.0.0.1:5001)


Notes

- `dalfox` installs via Go (`go install`)
- `XSStrike` runs directly from Python3
- `SpiderFoot` is web-based, no install needed


Legal

Only use this on networks, apps, or targets you have **explicit permission** to test. This repo is educational.


License
MIT (Only this repo. Linked tools have their own licenses.)
