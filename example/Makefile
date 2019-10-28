.PHONY: build
build: left.js right.js

.PHONY: rebuild
rebuild: touch build

.PHONY: touch
touch:
	touch *.dart

%.js: %.dart
	dart2js $< -o $@
	rm *.deps
