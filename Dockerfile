FROM alpine:latest
RUN apk --no-cache add dnsmasq && \
	echo "conf-dir=/etc/dnsmasq,*.conf" > /etc/dnsmasq.conf
EXPOSE 53 53/udp
VOLUME ["/etc/dnsmasq"]
ENTRYPOINT ["dnsmasq", "-k"]
