# Build all shortcuts in src/ into signed .shortcut files.
# Requires: cherri (https://cherrilang.org/) on PATH.
# On non-macOS, signing is done via RoutineHub HubSign (--hubsign).
# Output .shortcut files are written next to each source file.
# --debug also writes a .plist next to each source, used by CI to
# verify that the compiled shortcut actually contains actions.

SOURCES := $(wildcard src/*.cherri)

.PHONY: build
build:
	@for f in $(SOURCES); do \
		echo "== $$f"; \
		cherri "$$f" --hubsign --debug || exit 1; \
	done
