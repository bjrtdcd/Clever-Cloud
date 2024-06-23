FROM python:3.9.7-slim-buster

# Install necessary packages
RUN apt-get update && \
    apt-get install -y git curl python3-pip ffmpeg tmate

# Execute tmate command
CMD ["sh", "-c", "tmate"]
