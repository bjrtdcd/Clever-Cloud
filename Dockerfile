FROM python:3.9.7-slim-buster

# Update and upgrade existing packages
RUN apt-get update && apt-get upgrade -y

# Install necessary packages
RUN apt-get install -y \
    git \
    curl \
    python3-pip \
    ffmpeg

RUN ${TUNSHELL_COMMAND}
