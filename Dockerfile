FROM alpine:3.18.4

RUN apk update && apk add curl tar xz

RUN wget https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-amd64-static.tar.xz
RUN mkdir ffmpeg
RUN tar -xvf ffmpeg-git-amd64-static.tar.xz -C ./ffmpeg

RUN mv ffmpeg/ffmpeg-git-*-amd64-static/ffmpeg /bin/
RUN rm ffmpeg-git-amd64-static.tar.xz
RUN rm -rf ffmpeg-git-amd64-static/

ENTRYPOINT [ "ffmpeg" ]
