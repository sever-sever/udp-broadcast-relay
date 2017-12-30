udp-broadcast-relay: udp-broadcast-relay.c
	gcc -O0 udp-broadcast-relay.c -o udp-broadcast-relay

clean:
	-$(RM) *.o
	-$(RM) udp-broadcast-relay
	-$(RM) build-stamp
	-$(RM) -rf debian/udp-broadcast-relay

install:
	install -d $(DESTDIR)/usr/sbin
	install -d $(DESTDIR)/lib/systemd/system
	install -d $(DESTDIR)/etc/default
	install -m 0755 udp-broadcast-relay $(DESTDIR)/usr/sbin
	install -m 0644 udp-broadcast-relay.service $(DESTDIR)/lib/systemd/system
	install -m 0644 udp-broadcast-relay.default $(DESTDIR)/etc/default/udp-broadcast-relay
