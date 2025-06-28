#!/bin/bash

echo "[+] Updating system..."
sudo apt update

echo "[+] Installing core dependencies..."
sudo apt install -y python3 python3-pip git golang

echo "[+] Cloning XSStrike..."
git clone https://github.com/s0md3v/XSStrike.git

echo "[+] Installing XSStrike Python dependencies..."
cd XSStrike
pip3 install -r requirements.txt
cd ..

echo "[+] Cloning Dalfox..."
git clone https://github.com/hahwul/dalfox.git

echo "[+] Installing Dalfox via Go..."
cd dalfox
go install
cd ..

echo "[+] Cloning SpiderFoot..."
git clone https://github.com/smicallef/spiderfoot.git

echo "[+] Installing SpiderFoot Python requirements..."
cd spiderfoot
pip3 install -r requirements.txt
cd ..

echo "[✔] All tools cloned and dependencies installed."
