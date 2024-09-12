# Páginas web coloridas a partir de contêineres

## Pequena aplicação criada em Flask

### Descrição
Pequeno servidor web que gera páginas coloridas a partir do _export_ da variável de ambiente __WEB_COLOR__, por exemplo:
```export WEB_COLOR=blue```

Após _setar_ esta variável de ambiente é possível iniciar o flask ```flask run``` visualizando em qualquer _browser_ a página de fundo colorido escolhido:
_http://localhost:5000_

### Instruções
Você precisa ter o _venv_ instalado ou qualquer virtualizador de ambiente python, caso seja o _venv_, de "dentro" do diretório da aplicação:
```python -m venv venv``` para criar o ambiente virtual
```venv/bin/pip install -r requirements.txt``` para instalar as dependências
```source venv/bin/activate``` para ativar o ambiente virtual

Não esquecer de _setar_ a variável de ambiente que informa onde está a aplicação Flask:
```export FLASK_APP=main.py```

Após isto basta finalizar com o comando: ```flask run```

### Docker
Caso queira encapsular a aplicação em contêiner, o arquivo _Dockerfile_ já encontra-se pronto, bastando executar o _build_.