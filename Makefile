MODULE_DIR := concurrency_go_tasks

fmt:
	gofmt -w $(shell git ls-files '*.go')

vet:
	cd $(MODULE_DIR) && go vet ./...

lint:
	cd $(MODULE_DIR) && golangci-lint run --timeout 5m

test:
	cd $(MODULE_DIR) && go test ./...

.PHONY: fmt vet lint test
