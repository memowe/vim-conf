.PHONY: all init command-t

all: init command-t

init:
	git submodule update --init --recursive

command-t:
	cd bundle/command-t/ruby/command-t/ext/command-t && ruby extconf.rb && make
