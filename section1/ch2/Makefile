
DIR:= ${CURDIR}
AS:=as
ASARGS:=-arch arm64

LD:=ld
LDARGS:=-lSystem -syslibroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -e _start -arch arm64

# Find all .s files
$(eval SRC=$(shell find $(PWD) -maxdepth 1 -name "*.s"))

# Convert .s files to just the basefile name 
$(eval BASENAMES=$(shell basename $(SRC) .s)) 

# Append the .o suffix for release builds
TARGS:= $(addsuffix .o,$(BASENAMES))
BIN:= $(shell basename $(PWD))


.PHONY: clean

$(BIN): $(TARGS)
	$(LD) $(LDARGS) $^ -o $@  


%.o: %.s
	$(AS) $(ASARGS) $< -o $@

clean:
	rm -rf *.o $(BIN)