gsos: main.o
	ld -Tlink.ld --oformat binary *.o -o gsos

test: gsos
	qemu-system-x86_64 -drive format=raw,file=gsos

%.o: src/%.s
	as -o $@ $<

.PHONY: clean

clean:
	rm -rf *.o gsos
