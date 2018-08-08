CURDIR = $(shell pwd)

install:
	ln -s $(CURDIR)/namedate.sh /usr/local/bin/namedate
	ln -s $(CURDIR)/killport.sh /usr/local/bin/killport
