all: install

install: 
	mkdir -p $(DESTDIR)/usr/share/lider-server
	@cp -rf lider-server/* $(DESTDIR)/usr/share/lider-server
	mkdir -p $(DESTDIR)/etc/systemd/system/
	@cp lider.service /etc/systemd/system/
	mkdir -p $(DESTDIR)/etc/init.d/
	@cp lider /etc/init.d/

uninstall:
	@rm -rf /usr/share/lider-server
	@rm -rf /etc/systemd/system/lider.service
	@rm -rf /etc/init.d/lider

.PHONY: install uninstall
