CPPFLAGS = -Og -c -std=c++14 -Wextra -Wall -pedantic
OBJECTS = src/*.o test/*.o
GEN = src/scanner.cpp
EXEC = scan

# executable(s)
scan: src/main.o src/scanner.o
	g++ -o $@ $^

# generated code
src/scanner.cpp: src/scanner.flex
	flex -i -o$@ $^

# source->object code
%src/.o: %src/.cpp
	g++ $(CPPFLAGS) $^ $@

clean:
	rm -f $(GEN) $(EXEC) $(OBJECTS)
