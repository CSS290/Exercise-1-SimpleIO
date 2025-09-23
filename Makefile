# This is a Makefile
#
# Anything that begins with # is a comment line
#
# The first target is the default target
# A target is a label followed by a colon, followed by commands
# Each command line must begin with a tab character
# A target may depend on other targets
# A target is considered out-of-date if any of its dependencies is out-of-date
# The special target "all" is a convention for building everything

all: clean hello test

hello:
	g++ -std=c++11 main.cpp -o hello

test: hello
	timeout 1s ./hello < TestCase/InputFile.txt; echo "Status:" $$?
# Above timeout command says, run this program for 1-second and terminate it if it exceeds that duration
# The echo command prints out the exit status of the program
# An exit status of 0 means success, anything else is a failure

# The special target "clean" is a convention for removing all generated files	
clean:
	rm -f a.out hello