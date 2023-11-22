FROM alpine:3.18.4

RUN apk update && apk add curl tar xz

RUN wget https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-amd64-static.tar.xz
RUN tar -xvf ffmpeg-git-amd64-static.tar.xz

RUN mv ffmpeg/ffmpeg /bin/
RUN rm ffmpeg-git-amd64-static.tar.xz
RUN rm -rf ffmpeg-git-amd64-static/

ENTRYPOINT [ "ffmpeg" ]
