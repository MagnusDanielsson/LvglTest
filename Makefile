
#LVGL_DIR_NAME ?= lvgl     #The name of the lvgl folder (change this if you have renamed it)
#LVGL_DIR ?= ${shell pwd}  #The path where the lvgl folder is
#include lvgl/lvgl.mk

CC = gcc
CFLAGS = -Wall -g
LIB_DIR = lvgl/lib
LIBS = -llvgl

LIB_FLAGS := $(addprefix -L,$(LIB_DIR))

main : main.o 
	$(CC) $(CFLAGS) $^ $(LIB_FLAGS) $(LIBS) -o $@	
	
main.o : main.c
	$(CC) $(CFLAGS) -c $< -o $@
  
clean :	
	rm -f main *.o