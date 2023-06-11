CPPFLAGS = -Wall -Wextra -pedantic -Og -std=c++17 -g
OBJECTS = src/*.o test/*.o
GEN = src/scanner.c
EXEC = scan

# executable(s)
scan: src/main.o src/scanner.o
	g++ -o $@ $^

# source code
%src/.o: %src/.c
	g++ $(CPPFLAGS) $^ $@

# generated code
src/scanner.cpp: src/scanner.flex
	flex -+ -o$@ $^

clean:
	rm -f $(GEN) $(EXEC) $(OBJECTS)
