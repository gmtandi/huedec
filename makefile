#
# Frikdec makefile
#


PROG=		frikdec
CDEFS=		-DINLINE
CWARN=		-Wall -W
CFLAGS= 	-O2 $(CWARN) $(CDEFS) -I ../compiler -g -O0 -fbuiltin -fno-stack-protector -z execstack
OBJFILES=	cmdlib.o decomp.o main.o

all:	$(PROG)

$(PROG): $(OBJFILES)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(PROG) $(OBJFILES) $(LIBS)

clean:
	rm -rf $(PROG) $(OBJFILES) *.bak *~ make.log error.log
