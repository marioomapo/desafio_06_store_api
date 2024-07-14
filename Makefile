run: # sobe o servidor
	@uvicorn store.main:app --reload

precommit-install: # abre o precommit
	@poetry run pre-commit install

test: # comando de teste
	@poetry run pytest

test-matching: # comando para execultar teste específico
	@poetry run pytest -s -rx -k $(K) --pdb store ./tests/
