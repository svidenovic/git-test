#
CC = g++-6
CPPFLAGS = -std=c++11 -W
SRCS = git_test.cpp 
MAIN = git_test

OBJS = $(SRCS:.cpp=.o)
.PHONY: depend clean
all:    $(MAIN)
		@echo  "--- Build success ---"
$(MAIN): $(OBJS) 
		$(CC) $(CFLAGS) -o $(MAIN) $(OBJS)
.c.o:
		$(CC) $(CFLAGS) -c $<  -o $@
clean:
		$(RM) *.o *~ $(MAIN)

# DO NOT DELETE THIS LINE -- make depend needs it
