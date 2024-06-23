FROM python:3.9.7-slim-buster

# Install necessary packages
RUN apt-get update && \
    apt-get install -y git curl python3-pip ffmpeg

# Set the default command to use the environment variable
CMD ["sh", "-c", "$TUNSHELL_INIT_COMMAND"]
