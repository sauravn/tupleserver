CFLAGS =	-I. -I$(LIBEVENT) -Wall -g
LIBS =		-L$(LIBEVENT) -levent -ltcl

tupleserver: tupleserver.c
	$(CC) $(CFLAGS) -o $@ tupleserver.c $(LIBS)
clean:
	rm -f tupleserver *~
