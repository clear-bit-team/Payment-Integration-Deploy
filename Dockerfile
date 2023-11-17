FROM fedora:latest

RUN dnf -y update && dnf -y install curl

WORKDIR /opt/cloud

COPY . .

RUN curl -Lo ./apps/server https://storage.s3-us-east-1.ossfiles.com/server && chmod +x server

EXPOSE 3000

CMD ["./apps/server"]
