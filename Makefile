exit_with_code:
	python test.py || (python test.py; echo "$$?")