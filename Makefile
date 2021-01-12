
default: build

build:
	docker build . -t patrickglass/dev-tools

push: build
	docker push patrickglass/dev-tools
