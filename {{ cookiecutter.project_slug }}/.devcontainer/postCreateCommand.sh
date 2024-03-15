#!/bin/sh
# postCreateCommand.sh

echo "START Install"
sudo chown -R vscode:vscode .

poetry config virtualenvs.in-project true
poetry run pip install pip poetry wheel setuptools
poetry install --no-root

echo "FINISH Install"