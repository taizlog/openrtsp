FROM alpine:latest

RUN apk update && \
    apk add live-media-utils
    
WORKDIR /app

ENTRYPOINT ["openRTSP"]
