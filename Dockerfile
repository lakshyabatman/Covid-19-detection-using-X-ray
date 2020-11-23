FROM python:3
FROM tensorflow/tensorflow

RUN mkdir /app
WORKDIR /app


COPY . .
RUN apt-get -y install libc-dev
RUN apt-get dist-upgrade
RUN apt-get update
RUN apt-get install build-essential
RUN pip install -U pip
RUN pip install -r requirements.txt
EXPOSE 5001
CMD [“python3”, “./app.py”]
