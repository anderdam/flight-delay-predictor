.DEFAULT_GOAL := help

help:  ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

up: ## Start docker environment
	docker-compose up -d --build

down: ## Stop docker environment
	docker-compose down

logs: ## Show logs
	docker-compose logs -f

jupyter: ## Start JupyterLab
	docker exec -it devcontainer bash -c "source env/bin/activate && jupyter lab --ip=0.0.0.0 --port=8888 --allow-root --NotebookApp.token=''"

mlflow: ## Start MLflow server
	docker exec -it devcontainer bash -c "source env/bin/activate && mlflow ui --host 0.0.0.0 --port 5000"

precommit: ## Run pre-commit
	docker exec -it devcontainer bash -c "pre-commit run --all-files"

dags: ## List Airflow DAGs
	docker exec -it airflow airflow dags list

