.PHONY: html pdf clean purge

html:
	@echo "cd docs && $(MAKE)"
	@cd docs && $(MAKE) --no-print-directory

pdf: $(PDF)
	@echo "cd docs && $(MAKE) pdf"
	@cd docs && $(MAKE) --no-print-directory pdf

clean:
	@echo "cd docs && $(MAKE) clean"
	@cd docs && $(MAKE) --no-print-directory clean

PURGE_FILES=guide docs/empty.md
purge:
	@echo "Removing: $(PURGE_FILES)"
	@echo "Proceed [Y/n]?"
	@read line; if [ "$$line" = "n" ]; then exit 1; fi
	-rm -rf $(PURGE_FILES)
