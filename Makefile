CC=gcc # define the compiler to use
TARGET=androfetch # define the name of the executable
SOURCES=androfetch.c
PREFIX=/data/data/com.termux/files/usr # Define default root path

# define list of objects

build:
	$(CC) $(SOURCES) -o $(TARGET)

install: build
	cp $(TARGET) $(PREFIX)/bin
	mkdir -p $(PREFIX)/share/androfetch
	cp LICENSE $(PREFIX)/share/androfetch

all: install

purge: clean
	rm -f $(TARGET)

clean:
	rm -f $(TARGET)

uninstall:
	rm -rf $(PREFIX)/bin/$(TARGET) $(PREFIX)/share/androfetch

