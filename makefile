#Makefile for "Lab 1 - Questão 1" C++ application
#Created by Hilton e Lúcio 10/03/2019

PROG = Questao1
CC = g++
CPPFLAGS = -O0 -g -Wall -pedantic
LIB = lib
OBJS = $(LIB)/main.o $(LIB)/areas.o $(LIB)/perimetros.o $(LIB)/volumes.o

$(PROG) : $(OBJS)
	$(CC) -o $(PROG) $(OBJS)

main.o : 
	$(CC) $(CPPFLAGS) -c $(LIB)/main.cpp -o $(LIB)/main.o

areas.o :
	$(CC) $(CPPFLAGS) -c $(LIB)/areas.cpp -o $(LIB)/areas.o

perimetros.o :
	$(CC) $(CPPFLAGS) -c $(LIB)/perimetros.cpp -o $(LIB)/perimetros.o

volumes.o :
	$(CC) $(CPPFLAGS) -c $(LIB)/volumes.cpp -o $(LIB)/volumes.o

clean :
	rm -f $(LIB)/*.o
	rm -f core $(PROG) $(OBJS)
