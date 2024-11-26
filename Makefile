# Compiler and linker settings
CC = gcc                 # C compiler
CFLAGS = -Wall -g        # Compiler flags (enable warnings and debugging)
LDFLAGS =                # Linker flags (if any)

# Directories
SRCDIR = src
OBJDIR = obj
BINDIR = bin

# Files
SOURCES = $(wildcard $(SRCDIR)/*.c)          # Find all C source files in src/
OBJECTS = $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)  # Map .c files to .o object files
TARGET = $(BINDIR)/my_program      # The final executable

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
