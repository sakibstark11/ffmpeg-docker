FROM alpine:3.18.4

RUN apk update && apk add wget tar xz

RUN wget https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-amd64-static.tar.xz
RUN tar -xvf ffmpeg-git-amd64-static.tar.xz

RUN mv ffmpeg-git-*-amd64-static/ffmpeg /bin/
RUN rm -rf ffmpeg-git-*-amd64-static
RUN rm -rf ffmpeg-git-*-amd64-static.tar.xz

ENTRYPOINT [ "ffmpeg" ]
