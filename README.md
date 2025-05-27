# Flight Delay Predictor

![GitHub Repo stars](https://img.shields.io/github/stars/anderdam/flight-delay-predictor?style=social)
![GitHub last commit](https://img.shields.io/github/last-commit/anderdam/flight-delay-predictor)
![GitHub issues](https://img.shields.io/github/issues/anderdam/flight-delay-predictor)
![GitHub pull requests](https://img.shields.io/github/issues-pr/anderdam/flight-delay-predictor)

## Objetivo
Prever atrasos em voos comerciais com base em dados públicos e APIs de tracking, meteorologia e dados operacionais, 
visando aprendizado em Machine Learning, Big Data e obter novas certificações.


## ✨ Tecnologias
| Camada                  | Ferramentas / Tecnologias                              |
| ----------------------- |--------------------------------------------------------|
| Ingestão de dados       | `Requests`, `API's`, `CSV's`                           |
| Armazenamento           | `PostgreSQL`, `Parquet`, `SQLAlchemy`, `S3 (opcional)` |
| Processamento           | `Pandas`, `PySpark`, `SQL`, `Numpy`                    |
| Treinamento e MLOps     | `scikit-learn`, `MLflow`, `scipy`, `xgboost`           |
| Orquestração            | `TBD`                                                  |
| Deploy / Monitoramento  | `TBD`                                                  |
| Qualidade e Testes      | `pytest`, `mypy`, `pre-commit`, `bandit`, `ruff`       |
| CI/CD e Containerização | `Docker`, `devcontainer`                               |


## Fluxo de Dados
- Agendamento automático (TBD) ou manual.
- API é consultada e dados brutos são armazenados no PostgreSQL.
- Spark/Pandas transforma e limpa os dados.
- Features são geradas e persistidas.
- Modelo é treinado, registrado e avaliado com MLflow.
- Versão do modelo pode ser servida via API ou Streamlit.

## 🚀 Fontes de Dados

- https://www.kaggle.com/datasets/usdot/flight-delays
- https://aviationstack.com/
- https://opensky-network.org/

### Pré-requisitos
- Docker
- Pycharm com "Dev Containers"
- GNU Make

### 1. Clonar e entrar no projeto
```bash
git clone https://github.com/anderdam/flight-delay-predictor

