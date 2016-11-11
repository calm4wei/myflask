#!/bin/sh

export FLASK_APP=myFlask.py

python -m flask initdb

python -m flask run --port=8000
