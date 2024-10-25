.PHONY: sync
sync:
	@echo "Configuration of $t syncing..."
	@cp ~/.$t ./$t
	@echo "Configuration of $t sync done."

.PHONY: install
install:
	@echo "Configuration of $t installing..."
	@cp ./$t ~/.$t
	@echo "Configuration of $t installed."
