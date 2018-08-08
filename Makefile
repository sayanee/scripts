CURDIR = $(shell pwd)

install:
	ln -s $(CURDIR)/namedate.sh /usr/local/bin/namedate
	ln -s $(CURDIR)/killport.sh /usr/local/bin/killport
	ln -s $(CURDIR)/unblock.sh /usr/local/bin/unblock
	ln -s $(CURDIR)/block.sh /usr/local/bin/block
