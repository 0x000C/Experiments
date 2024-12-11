# Stage 1 - Get binary
FROM alpine:latest AS builder
WORKDIR /tmp
RUN apk add --no-cache curl unzip && \
    curl -sSL https://downloads.rclone.org/rclone-current-linux-amd64.zip -o rclone.zip && \
    unzip rclone.zip && \
    mv rclone-*-linux-amd64/rclone /usr/bin/rclone && \
    chmod +x /usr/bin/rclone && \
    rm -rf rclone.zip rclone-*-linux-amd64

# Stage 2 - Put binary in image
FROM scratch
COPY --from=builder /usr/bin/rclone /rclone
ENTRYPOINT ["/rclone"]
