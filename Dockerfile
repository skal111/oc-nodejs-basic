FROM alpine
ENV http_proxy=http://zrh1.sme.zscloud.net:9480/
ENV https_proxy=https://zrh1.sme.zscloud.net:9480/
ENV no_proxy=intra-tpg.ch
RUN apk update && apk add nodejs
COPY . /app
WORKDIR /app
CMD ["node","server.js"]
