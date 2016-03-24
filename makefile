CFLAGS=-c -Wall -O2 `pkg-config --cflags gtk+-3.0`
LIBS = -lX11 -lbluetooth -lpthread `pkg-config --libs gtk+-3.0`

all: zm

zm: main.o
	$(CC) main.o $(LIBS) -o zm

main.o: main.c
	$(CC) $(CFLAGS) main.c

install:
	sudo cp *.xml /usr/share/glib-2.0/schemas
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas

clean:
	rm -rf *o zm

