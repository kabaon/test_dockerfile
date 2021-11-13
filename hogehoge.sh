#!/bin/bash

if test -f ./manege.py; then
	python3 manage.py runserver 0.0.0.0:8000
else
    django-admin.py startproject mysite . &&
    python3 manage.py runserver 0.0.0.0:8000
fi
