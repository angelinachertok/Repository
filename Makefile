.PHONY: build-image run-dev

build-image:
	docker build -t modern-cpp-dev .

run-dev:
	docker run -it --rm -v ${PWD}:/src -w /src modern-cpp-dev
