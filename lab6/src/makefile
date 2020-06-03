all: client server

server: libcommon.a server.o
	gcc -o server server.o -L. -lcommon -lpthread 

client: libcommon.a client.o
	gcc -o client client.o -L. -lcommon -lpthread 

server.o: server.c
	gcc -c server.c  

client.o: client.c
	gcc -c client.c  

libcommon.a: common.o
	ar cr libcommon.a common.o

common.o : common.h
	gcc -c common.c 

clean :
	rm client server libcommon.o