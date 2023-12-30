# Prusa Connect RTSP

Grab frames from a RTSP stream and publish them to Prusa connect

## Run locally

```bash
git clone https://github.com/beccazero/prusa-connect-rtsp.git
cd prusa-connect-rtsp
poetry install

# Create a .env file from the example
cp .env.example .env
# Modify the .env file with your values
vim .env

python prusa_connect_rtsp/main.py
```

## Build and run docker container

```bash
# Create a .env file from the example
cp .env.example .env
# Modify the .env file with your values
vim .env
# Build the container
docker build -t prusa-connect-rtsp
# Start the container
docker run --env-file .env prusa-connect-rtsp 
```