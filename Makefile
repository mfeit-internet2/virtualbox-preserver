#
# Makefile for Virtualbox-Preserver
#

NAME=virtualbox-preserver
PREFIX=/

install:
	cp -f "$(NAME)" "$(PREFIX)/usr/bin"
	chmod 555 "$(PREFIX)/usr/bin/$(NAME)"
	cp -f "$(NAME).service" "$(PREFIX)/usr/lib/systemd/system"
	chmod 444 "$(PREFIX)/usr/lib/systemd/system/$(NAME).service"
	systemctl daemon-reload
	systemctl enable --now "$(NAME)"


clean:
	rm -rf $(TO_CLEAN) *~
