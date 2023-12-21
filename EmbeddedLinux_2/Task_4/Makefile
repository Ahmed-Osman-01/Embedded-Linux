CC= avr-gcc

ODIR = Objects
SDIR = Sources
HDIR = Headers
LDIR = Lib

SLIB = $(LDIR)/libmcal.a

ALL_SOURCES= $(wildcard Sources/*.c)
ALL_HEADERS= $(wildcard Headers/*.h)
ALL_OBJECTS= $(patsubst $(SDIR)/%.c, $(ODIR)/%.o, $(ALL_SOURCES))


all : $(LDIR) $(SLIB)

$(SLIB): $(ODIR) $(ALL_OBJECTS)
	ar -rcs $(SLIB) $(ALL_OBJECTS)

$(ALL_OBJECTS): $(ALL_SOURCES)
	$(CC) -c -I$(HDIR) -o $@ $<

$(ODIR):
	@echo "Creating Objects directory"
	@mkdir Objects

$(LDIR):
	@echo "Creating Lib directory"
	@mkdir Lib


.PHONY: clean
clean:
	@rm -r $(ODIR) $(LDIR)
	
	
