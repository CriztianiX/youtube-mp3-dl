FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y python3-pip ffmpeg git
COPY ./youtube-mp3.py /youtube-mp3.py
COPY ./entrypoint.sh /entrypoint.sh
RUN pip3 install --upgrade --force-reinstall "git+https://github.com/ytdl-org/youtube-dl.git"
ENTRYPOINT ["bash", "/entrypoint.sh"]
