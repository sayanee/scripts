CURDIR = $(shell pwd)

install:G
	rm -f /usr/local/bin/killport
	ln -s $(CURDIR)/killport.sh /usr/local/bin/killport

	rm -f /usr/local/bin/unblock
	ln -s $(CURDIR)/unblock.sh /usr/local/bin/unblock

	rm -f /usr/local/bin/block
	ln -s $(CURDIR)/block.sh /usr/local/bin/block
