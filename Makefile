CXX  =  g++
CFLAG  =  -g  -Wall
TARGET  =  main

all:
  $(CXX)  $(CFLAG)  -o  main  $(TARGET).cpp
  ./main
clean:
  $(RM)  $(TARGET)
