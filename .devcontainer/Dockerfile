FROM python:3.11.5

ENV DEBIAN_FRONTEND=noninteractive

# Removing a possibly pre-existing .venv
RUN rm -rf .venv

# Installing pip, pipenv and updating .bashrc
RUN pip install --upgrade pip && \
    pip install pipenv && \
    echo 'if [ -f "Pipfile" ]; then source $(pipenv --venv)/bin/activate; fi' >> ~/.bashrc

# Installing system dependencies
RUN apt-get update && \
    apt-get install -y pandoc inotify-tools && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
