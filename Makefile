IMAGE   := dleskecc/$(shell basename $(shell pwd))
SOURCES := Dockerfile src/*

all: test .release

.PHONY: test
test:
	src/rpm-changelog-cleanup -t

.release: $(SOURCES)
	docker build -t $(IMAGE) .
	docker push $(IMAGE)
	touch .release
