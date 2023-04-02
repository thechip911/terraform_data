FROM python:latest

# set work directory
WORKDIR /app
COPY . .

ARG requirements=requirements.txt

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1    # Prevents Python from writing pyc files to disc
ENV PYTHONUNBUFFERED 1           # Prevents Python from buffering stdout and stderr

RUN apt update
#RUN apt install bash git gcc musl-dev python3-dev libpq-dev build-essential supervisor vim cron netcat telnet postgresql-client gdal-bin neovim zsh -y

RUN python -m pip install --upgrade pip setuptools wheel
RUN pip install  --default-timeout=100 -r ${requirements}
EXPOSE 8000

ENTRYPOINT ["python", "manage.py","runserver", "0.0.0.0:8000"]