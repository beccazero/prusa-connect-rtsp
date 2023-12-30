FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && apt-get install -y python3.10 python3.10-venv python3-opencv && apt-get clean

RUN python3 -m venv /app/venv

ADD README.md pyproject.toml /app/
ADD prusa_connect_rtsp /app/prusa_connect_rtsp

RUN /app/venv/bin/pip3 install .

CMD ["/app/venv/bin/python", "prusa_connect_rtsp/main.py"]