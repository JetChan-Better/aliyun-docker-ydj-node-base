build:
	@docker build --force-rm -t vega/ydj-node-base .

test:
	@docker run -it --rm --name test vega/ydj-node-base /bin/bash

.PHONY: build
