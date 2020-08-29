.PHONY: .venv

all: .venv

.venv: .venv/bin/activate

.venv/bin/activate: requirements.txt
	virtualenv .venv -p python3
	.venv/bin/pip install -r requirements.txt
