FROM alpine
RUN apk add --no-cache tzdata
ENV TZ Europe/Paris
RUN apk add --no-cache ffmpeg
COPY ./take-screenshot.sh /
RUN chmod +x /take-screenshot.sh
ENV BASEDIRECTORY .
ENTRYPOINT ["/take-screenshot.sh"]
