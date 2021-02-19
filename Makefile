CC=gcc
CFLAGS=-L/System/Library/Frameworks -framework GLUT -framework OpenGL

ricci.exe: ricci.c
	$(CC) -o $@ $< $(CFLAGS)

.PHONY: clean

clean:
	rm ricci.exe