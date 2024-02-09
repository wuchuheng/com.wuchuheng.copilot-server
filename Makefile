# Makefile to build the 'notification' project for multiple platforms

BINARY_NAME=copilot
VERSION=v1.0.0
OUTPUT_DIR=bin
MAIN_FILE=src/main.go

# convert the version to a valid go identifier
VERSION_IDENTIFIER=$(subst .,_,$(VERSION))

.PHONY: all mac_amd64 mac_arm linux_amd64

all: mac_amd64 mac_arm linux_amd64

mac_amd64:
	GOOS=darwin GOARCH=amd64 go build -o ${OUTPUT_DIR}/${BINARY_NAME}_Darwin_amd64_${VERSION_IDENTIFIER} ${MAIN_FILE}

mac_arm:
	GOOS=darwin GOARCH=arm64 go build -o ${OUTPUT_DIR}/${BINARY_NAME}_Darwin_arm64_${VERSION_IDENTIFIER} ${MAIN_FILE}

linux_amd64:
	GOOS=linux GOARCH=amd64  go build -o ${OUTPUT_DIR}/${BINARY_NAME}_Linux_amd64_${VERSION_IDENTIFIER} ${MAIN_FILE}

clean:
	rm -f ${OUTPUT_DIR}/${BINARY_NAME}_*
