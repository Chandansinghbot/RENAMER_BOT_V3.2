
FROM python:3.10.8

WORKDIR /app

COPY requirements.txt /app/

RUN apt update && apt upgrade -y
RUN apt install git python3-pip ffmpeg -y

COPY . .

RUN pip3 install -r requirements.txt

COPY . /app

CMD python3 bot.py
