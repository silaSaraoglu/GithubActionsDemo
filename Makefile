# Compiler and linker settings
CC = gcc                 # C compiler
CFLAGS = -Wall -g        # Compiler flags (enable warnings and debugging)
LDFLAGS =                # Linker flags (if any)

# Phony targets are not actual files, used to avoid conflicts with file names
.PHONY: all clean run exit_with_code

# Default target (this is the target run when `make` is invoked with no arguments)
all: $(exit_with_code)

# Run the compiled program (only works if the program exists)
run: $(exit_with_code)
	@echo "Running the program..."
	$(exit_with_code)

# Custom target that exits with code 3
exit_with_code:
	@echo "This will exit with code 3"
	@exit 3
