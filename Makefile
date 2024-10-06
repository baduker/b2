TARGET_DIR := /usr/local/bin
SCRIPT_NAME := b2

.PHONY: install

install:
	@echo "Installing $(SCRIPT_NAME) to $(TARGET_DIR)"
	sudo cp $(SCRIPT_NAME) $(TARGET_DIR)/$(SCRIPT_NAME)
	@echo "Setting executable permission."
	sudo chmod +x $(TARGET_DIR)/$(SCRIPT_NAME)
	@echo "Done."
