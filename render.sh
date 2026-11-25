#!/usr/bin/env bash
# Собирает PNG и SVG из всех исходников *.mmd в этой папке.
# Нужен mermaid-cli: npm install -g @mermaid-js/mermaid-cli
set -euo pipefail
cd "$(dirname "$0")"
for src in *.mmd; do
  name="${src%.mmd}"
  echo "→ $src"
  mmdc -p puppeteer.json -i "$src" -o "$name.png" -b white -w 2600 -s 2
done
