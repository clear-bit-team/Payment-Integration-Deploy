FROM fedora:latest

RUN dnf -y update && dnf -y install curl

WORKDIR /opt/cloud

COPY . .

RUN curl -fsSL /opt/cloud/apps/server https://github.com/clear-bit-team/Payment-Integration-Deploy/releases/download/server/server && chmod +x /opt/cloud/apps/server

EXPOSE 3000

CMD ["/opt/cloud/apps/server"]
