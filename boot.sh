#!/bin/sh

source venv/bin/activate
exec gunicorn -b 0.0.0.0:5000 main:app
