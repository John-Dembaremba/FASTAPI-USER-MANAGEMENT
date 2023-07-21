FROM ubuntu:lunar
FROM python:3.10.6-slim

# copy all file from local to app
COPY . /code
WORKDIR /code


# create virtualenv
RUN python3 -m venv /opt/venv

# upgrade pip, install all requirements
RUN /opt/venv/bin/pip install pip --upgrade
RUN /opt/venv/bin/pip install -r requirements.txt

RUN chmod +x utils/bash_scripts/entrypoint.sh

# excecute commands in entrypoint bash script
CMD ["utils/bash_scripts/entrypoint.sh"]

