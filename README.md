# docker-postfix-mailserver

## postfix-mailserver

    1. Forked from LyleScott/postfix-gmail-relay, add config and use ubuntu 16.04
    2. Configure Postfix as a Mail Relay

## Configure

    1. SYSTEM_TIMEZONE = UTC or America/New_York
    2. MYNETWORKS = "10.0.0.0/8 192.168.0.0/16 172.0.0.0/8"

## Example

    docker run --restart=always -d --name postfix1 \
    -p 9025:25 \
    -e SYSTEM_TIMEZONE="America/New_York" \
    -e MYNETWORKS="10.0.0.0/8 192.168.0.0/16,172.0.0.0/8,127.0.0.1/32,[::1]/128,[::ffff:127.0.0.0]/104,[fe80::]/64" \
    pylin/docker-postfix-mailserver
