FROM python:3.9-slim-bullseye

ENV WEB_COLOR=white

RUN useradd -m flasky
USER flasky
WORKDIR /home/flasky

COPY requirements.txt ./

RUN python -m venv venv
RUN venv/bin/pip install -r requirements.txt

COPY templates templates
COPY boot.sh main.py ./

EXPOSE 5000

ENTRYPOINT [ "./boot.sh" ]