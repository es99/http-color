# Páginas web coloridas a partir de contêineres

## Pequena aplicação criada em Flask

### Descrição
Pequeno servidor web que gera páginas coloridas a partir da variável de ambiente WEB_COLOR, por exemplo:
```export WEB_COLOR=blue```

Após _setar_ esta variável de ambiente é possível 'rodar' o flask a partir do comando ```flask run```e visualizar no seu servidor a partir da url: __localhost:5000__ a página colorida gerada.

### Instruções
Você precisa ter o _venv_ instalado ou qualquer virtualizar de ambiente python, no caso do venv, dentor da diretório da aplicação:
```python -m venv venv``` para criar o ambiente virtual
```venv/bin/pip install -r requirements.txt``` para instalar as dependências
```source venv/bin/activate``` para ativar o ambiente virtual

Não esquecer de _setar_ a variável de ambiente que informa onde está a aplicação Flask:
```export FLASK_APP=main.py```

Após isto basta finalizar com o comando: ```flask run```

### Docker
Caso queira encapsular a aplicação em contêiner, o arquivo _Dockerfile_ já encontra-se pronto, bastando executar o _build_.