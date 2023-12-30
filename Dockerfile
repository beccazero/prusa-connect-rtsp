FROM python:3.12

RUN pip install --upgrade pip
RUN apt-get update && apt-get -y install libgl1 ffmpeg libavcodec-dev \
 && apt-get clean

WORKDIR /app

ADD README.md pyproject.toml /app/
ADD prusa_connect_rtsp /app/prusa_connect_rtsp

RUN pip install .

CMD ["python", "prusa_connect_rtsp/main.py"]