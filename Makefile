.PHONY: build test clean fmt lint help

# Go parameters
GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get
GOMOD=$(GOCMD) mod
GOFMT=gofmt

# Binary names
BINARY_NAME=metago
BINARY_UNIX=$(BINARY_NAME)_unix

# Main targets
help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Available targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: ## Build the project
	$(GOBUILD) -o bin/$(BINARY_NAME) ./cmd/...

test: ## Run tests
	$(GOTEST) -v ./...

test-coverage: ## Run tests with coverage
	$(GOTEST) -v -coverprofile=coverage.out ./...
	$(GOCMD) tool cover -html=coverage.out -o coverage.html

clean: ## Clean build artifacts
	$(GOCLEAN)
	rm -rf bin/
	rm -f coverage.out coverage.html

fmt: ## Format source code
	$(GOFMT) -w -s ./pkg/ ./internal/ ./cmd/

lint: ## Run linter
	golangci-lint run ./...

deps: ## Download dependencies
	$(GOMOD) download

tidy: ## Tidy dependencies
	$(GOMOD) tidy

# Development targets
dev: fmt lint test ## Run development checks

all: clean deps fmt lint test build ## Run all build steps