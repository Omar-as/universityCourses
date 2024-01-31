include ./arch.gnu
# OPTIMIZATION = -fast
# OPTIMIZATION = -O3
# DEBUG += -g


app:		cardiacsim_serial cardiacsim_a cardiacsim_b cardiacsim_c cardiacsim_c_test

OBJECTS = cardiacsim_serial.o splot.o cmdLine.o
OBJECTS_2 = cardiacsim_a.o splot.o cmdLine.o
OBJECTS_3 = cardiacsim_b.o splot.o cmdLine.o
OBJECTS_4 = cardiacsim_c.o splot.o cmdLine.o
OBJECTS_5 = cardiacsim_c_test.o splot.o cmdLine.o

cardiacsim_serial:	        $(OBJECTS) 
		$(C++LINK) $(LDFLAGS) -o $@ $(OBJECTS)  $(LDLIBS)

cardiacsim_a:	        $(OBJECTS_2) 
		$(C++LINK) $(LDFLAGS) -o $@ $(OBJECTS_2)  $(LDLIBS)
cardiacsim_b:	        $(OBJECTS_3) 
		$(C++LINK) $(LDFLAGS) -fopenmp -o $@ $(OBJECTS_3)  $(LDLIBS)
cardiacsim_c:	        $(OBJECTS_4) 
		$(C++LINK) $(LDFLAGS) -o $@ $(OBJECTS_4)  $(LDLIBS)
cardiacsim_c_test:	        $(OBJECTS_5) 
		$(C++LINK) $(LDFLAGS) -o $@ $(OBJECTS_5)  $(LDLIBS)

clean:	
	$(RM) *.o cardiacsim_serial cardiacsim_a cardiacsim_b cardiacsim_c cardiacsim_c_test *~;
	$(RM) core;
