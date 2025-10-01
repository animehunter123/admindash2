# This is for adminsl "admindash2-app" docker image
# BUILD IN LINUX UBUNTU, and USE COMMAND: docker build -t admindash2-app:1.0 .

FROM python:latest
LABEL maintainer="adminsl@lm.local"
COPY . /opt/admindash
WORKDIR /opt/admindash
# RUN pushd . \
#   && apt-get update \
#   && apt-get install -y python3-pip python3-dev \
#   && cd /usr/local/bin \
#   && ln -s /usr/bin/python3 python \
#   && pip3 install --upgrade pip \
#   && popd 
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["/opt/admindash/app.py"]
