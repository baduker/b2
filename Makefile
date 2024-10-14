TARGET_DIR := /usr/local/bin
SCRIPT_NAME := b2

.PHONY: install uninstall upgrade

install:
	@echo "Installing $(SCRIPT_NAME) to $(TARGET_DIR)"
	sudo cp $(SCRIPT_NAME) $(TARGET_DIR)/$(SCRIPT_NAME)
	@echo "Setting executable permission."
	sudo chmod +x $(TARGET_DIR)/$(SCRIPT_NAME)
	@echo "Done."

uninstall:
	@echo "Uninstalling $(SCRIPT_NAME) from $(TARGET_DIR)"
	sudo rm -f $(TARGET_DIR)/$(SCRIPT_NAME)
	@echo "Done."

upgrade:
	@echo "Upgrading $(SCRIPT_NAME)..."
	git pull origin main
	$(MAKE) install
	@echo "Upgrade complete."
