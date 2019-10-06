FROM python:3.7.1
MAINTAINER vjyq <yuqing.ji@outlook.com>
WORKDIR /huz
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update -y && \
    apt-get install -y ffmpeg
CMD find . \( -name '__pycache__' -or -name '*.pyc' \) -delete
CMD tail -f /dev/null
