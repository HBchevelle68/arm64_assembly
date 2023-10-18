AS:=as
ASARGS:=-arch arm64

LD:=ld
LDARGS:=-lSystem -syslibroot /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk -e _start -arch arm64

.PHONY: clean

hello: hello.o
	$(LD) $(LDARGS) $^ -o $@  


%.o: %.s
	$(AS) $(ASARGS) $< -o $@

clean:
	rm -rf *.o hello