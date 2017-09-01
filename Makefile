COMMIT=`git rev-parse --short HEAD`

build:
	docker build -t quickchip:$(COMMIT) -f Dockerfile .

volume:
	docker volume create \
		--name quickchip-ghost-storage

.PHONY: build volume
