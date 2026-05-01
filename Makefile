CC = clang
CFLAGS = -std=c99 -Wall -pedantic -fPIC -I./src

all:bin/a0

bin/a0: obj/main.o lib/libutil.so
	$(CC) obj/util.o obj/main.o -Llib -lutil -o bin/a0

obj/main.o: src/main.c src/util.h
	$(CC) $(CFLAGS) -c src/main.c -o obj/main.o

obj/util.o: src/util.c src/util.h
	$(CC) $(CFLAGS) -c src/util.c -o obj/util.o

lib/libutil.so: obj/util.o
	$(CC) $(CFLAGS) -shared obj/util.o -o lib/libutil.so

clean:
	rm -f obj/*.o

cleaner:
	rm -f obj/*.o lib/*.so bin/a0
