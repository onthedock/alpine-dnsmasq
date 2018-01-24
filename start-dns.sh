CONTAINER_NAME="dns"
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME
docker run -d --name $CONTAINER_NAME \
    -p 53:53 -p 53:53/udp \
    --cap-add=NET_ADMIN \
    -v $(pwd)/dnsmasq.conf:/etc/dnsmasq.conf:ro \
    -v $(pwd)/hosts:/etc/hosts:ro \
xaviaznar/alpine-dnsmasq:3.7-2.78-r1
