PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man/man1

install:
	mkdir -p ${DESTDIR}${PREFIX}/bin ${MANPREFIX}
	install -Dm755 chvids ${PREFIX}/chvids
	install -Dm755 channels ${PREFIX}/channels
	cp chvids.1 ${MANPREFIX}/chvids.1
	cp channels.1 ${MANPREFIX}/channels.1
