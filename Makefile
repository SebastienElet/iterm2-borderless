
iTerm2/:
	git clone https://github.com/gnachman/iTerm2.git

reset: iTerm2/
	cd iTerm2 && git reset --hard 0232ba490ba855ca34bc23446bb1e6e13d7cfab9
	@if [ -d iTerm2/bin  ] ; \
		then \
			rm -rf iTerm2/bin ; \
	fi;
	@if [ -d iTerm.app/iTerm2.app ] ; \
		then \
			rm -rf iTerm.app/iTerm2.app ; \
	fi;

patch: reset
	patch iTerm2/sources/PseudoTerminal.m < borderless.patch

build: patch
	cd iTerm2 && \
		mkdir bin && \
		xcodebuild install DSTROOT=./bin
	mv iTerm2/bin/Applications/iTerm2.app iTerm2.app

clean-patch: reset
	rm -rf iTerm2/bin/
