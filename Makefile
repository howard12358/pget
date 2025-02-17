GIT_REF := $(shell git describe --always --tag)
VERSION ?= $(GIT_REF)

.PHONY: clean
build:
	go build -o ./bin/get -trimpath -ldflags "-w -s -X main.version=$(VERSION)" -mod=readonly ./cmd/pget