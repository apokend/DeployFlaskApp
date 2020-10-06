FROM python:3.6.1-alpine

WORKDIR /app

RUN apt-get updated

RUN apt-get install -y git

RUN git clone http://github.com/apokend/flask_app.git .

RUN pip install -r requirements.txt

EXPOSE 5001
