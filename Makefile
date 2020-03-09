DC = docker-compose
CURRENT_DIR = $(shell pwd)

proto:
	docker run --rm -v $(CURRENT_DIR)/$(api):$(CURRENT_DIR) \
	-v $(CURRENT_DIR)/$(api):/schema \
	-w $(CURRENT_DIR) thethingsindustries/protoc \
	-I/schema \
	-I/usr/include/github.com/envoyproxy/protoc-gen-validate \
	--doc_out=markdown,README.md:/schema \
	$(api).proto