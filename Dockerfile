FROM python:3.9-slim-bullseye AS builder

RUN useradd -m flasky
USER flasky
WORKDIR /home/flasky

COPY requirements.txt ./

RUN python -m venv venv && \
    venv/bin/pip install --upgrade pip && \
    venv/bin/pip install -r requirements.txt

FROM python:3.9-alpine3.15

#RUN apk add gcc && apk add g++ && apk add libffi-dev
RUN adduser -D flasky
USER flasky
WORKDIR /home/flasky
COPY --from=builder /home/flasky/venv ./venv

COPY templates templates
COPY boot.sh main.py ./

EXPOSE 5000

ENTRYPOINT [ "./boot.sh" ]