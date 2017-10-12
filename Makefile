 all: build doczip myexe docs
	

build: collegemain.o college.o course.o
	g++ -o all collegemain.o college.o course.o

collegemain.o: collegemain.cc

college.o: college.h course.h node.h college.cc

course.o: course.h course.cc

clean: 
	rm -r html latex rm -f *.o main *~ myexe build 

doczip:
	zip bl447512.zip ~/quiz2

myexe: 
	g++ -o all collegemain.o college.o course.o

docs: 
	doxygen ./ collegemain.cc course.cc college.cc
