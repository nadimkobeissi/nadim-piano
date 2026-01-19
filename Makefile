.PHONY: install serve build publish

install:
	git submodule update --init --recursive

update:
	git submodule update --remote --merge

serve:
	hugo serve

build:
	hugo build

publish:
	git add -A && (git commit -am "Piano diary publish" || true) && git push
	hugo build
	rm -rf ../nadim-website/piano/*
	cp -R public/* ../nadim-website/piano/.
	cd ../nadim-website && git pull && git add -A && (git commit -am "Piano diary publish" || true) && git push
