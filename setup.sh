#!/usr/bin/env bash

echo "=== SETUP PYTHON REQUIREMENTS ==="
python3 -m venv venv && source ./venv/bin/activate
venv/bin/pip install -U pip wheel setuptools
venv/bin/pip install -r requirements/dev.txt

echo
echo "=== SETUP SELENIUM GRID ==="
docker-compose up -d
