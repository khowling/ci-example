# Use Alpine as base linux (light and secure)
FROM alpine
RUN apk update && apk upgrade

RUN apk add nodejs

WORKDIR /app

ADD . /app

ENV PORT 3000
EXPOSE 3000

ENTRYPOINT ["node","index.js"]
