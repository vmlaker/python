.PHONY: venv

all: venv

venv/bin/activate: requirements.txt
	test -d venv || virtualenv -p python3 venv
	. venv/bin/activate; pip install --upgrade pip
	. venv/bin/activate; pip install -Ur requirements.txt
	touch venv/bin/activate
	ln -sf venv/bin/python .

venv: venv/bin/activate
