CPPFLAGS = -Wall -Wextra -pedantic -Og -std=c++17 -g
OBJECTS = src/*.o test/*.o
EXEC = main

main: src/main.o
	g++ -o $@ $^
%src/.o: %src/.c
	g++ $(CPPFLAGS) $^ $@
clean:
	rm -f $(EXEC) $(OBJECTS)
