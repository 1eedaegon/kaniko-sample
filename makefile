
.PHONY: tidy
tidy:
	go mod tidy

.PHONY: run
run:
	go run main.go

.PHONY: test
test:
	go test -v ./...

.PHONY: build
build:
	go build -o bin/ ./...