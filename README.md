# Páginas web coloridas a partir de contêineres

## Pequena aplicação criada em Flask

### Descrição
Pequeno servidor web que gera páginas coloridas do _export_ da variável de ambiente WEB_COLOR, por exemplo:
```export WEB_COLOR=blue```

Após _setar_ esta variável de ambiente é possível iniciar o flask ```flask run``` visualizando no seu _browser_ a partir da url: __localhost:5000__ a página colorida gerada.

### Instruções
Você precisa ter o _venv_ instalado ou qualquer virtualizador de ambiente python, no caso do _venv_, _workdir_ no diretório da aplicação:
```python -m venv venv``` para criar o ambiente virtual
```venv/bin/pip install -r requirements.txt``` para instalar as dependências
```source venv/bin/activate``` para ativar o ambiente virtual

Não esquecer de _setar_ a variável de ambiente que informa onde está a aplicação Flask:
```export FLASK_APP=main.py```

Após isto basta finalizar com o comando: ```flask run```

### Docker
Caso queira encapsular a aplicação em contêiner, o arquivo _Dockerfile_ já encontra-se pronto, bastando executar o _build_.