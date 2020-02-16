#!/usr/bin/env bash

cd src
pipenv run gunicorn rest_api:app -b 0.0.0.0:5000 --daemon -w 4 \
             --access-logfile ../log/access.log \
             --error-logfile ../log/error.log
