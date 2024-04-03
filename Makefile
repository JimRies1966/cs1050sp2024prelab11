##############################################################################
# Makefile for PreLab 11
# CMP_SC 1050
# SP 2024
# By Jim Ries (RiesJ@missouri.edu)
##############################################################################
CC = gcc
CFLAGS = -Wall -Werror -c -g -std=c11 
LDFLAGS = -lm -L.

%.o : %.c 
	@echo Compiling $^ ...
	@$(CC) $(CFLAGS) $^

default: a.out

regular: clean a.out

debug: CFLAGS += -DDEBUG
debug: clean a.out

honors: CFLAGS += -DHONORS
honors: clean a.out

honorsdebug: CFLAGS += -DHONORS -DDEBUG
honorsdebug: clean a.out

a.out : prelab11.o movies.o
	@echo Linking $@ ...
	@$(CC) $^ $(LDFLAGS) -o $@
	@echo Done!

clean : 
	@rm -rf *.o
	@rm -rf a.out
	@echo All Clean!

cleanall: clean cleanlib

cleanlib :
	@rm -rf *.a
