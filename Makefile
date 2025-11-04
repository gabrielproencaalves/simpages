.RECIPEPREFIX = >
INDEXES := $(shell ./Makescan)

.PHONY: $(INDEXES)
all: $(INDEXES)
