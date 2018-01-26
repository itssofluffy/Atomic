all: build

gyb:
	gyb-source

build:	gyb
	swift build

release:
	swift build --configuration release

test:	gyb
	swift test

runtest:
	swift test --skip-build

docs:
	swift package generate-xcodeproj

clean:
	swift package clean

.PHONY: build release test runtest docs clean
