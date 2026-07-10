# Variables
TARGET=README.md
SCRIPT=guessinggame.sh

all: $(TARGET)

$(TARGET): $(SCRIPT)
	@echo "Generating $(TARGET)..."
	@echo "# Project: Bash, Make, Git, and GitHub Assignment" > $(TARGET)
	@echo "" >> $(TARGET)
	@echo "### Execution Details" >> $(TARGET)
	@echo "- **Date and Time of execution:** $$(date)" >> $(TARGET)
	@echo "- **Number of lines in $(SCRIPT):** $$(wc -l < $(SCRIPT))" >> $(TARGET)

clean:
	@echo "Removing generated files..."
	rm -f $(TARGET)
