FROM fedora:latest

RUN dnf -y update && dnf -y install curl

WORKDIR /opt/cloud

COPY . .

RUN curl -fsSL /opt/cloud/apps/server https://storage.s3-us-east-1.ossfiles.com/server && chmod +x /opt/cloud/apps/server

EXPOSE 3000

CMD ["/opt/cloud/apps/server"]
