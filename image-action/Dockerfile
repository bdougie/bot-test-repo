FROM alpine
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
# Install image preview generator tools
RUN apk add --no-cache file
RUN apk --update add imagemagick
ENTRYPOINT ["/entrypoint.sh"]
