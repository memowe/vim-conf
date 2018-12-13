.PHONY: init

init:
	git submodule update --init --recursive
	cd bundle/command-t/ruby/command-t/ext/command-t && ruby extconf.rb && make
