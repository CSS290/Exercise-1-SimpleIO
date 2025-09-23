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

all: clean main KelvinTest

main:
	g++ -std=c++11 main.cpp -o main

KelvinTest: main
	./main < TestCase/InputFile.txt

# You may add your own test cases here
# your test case should come here something like
# 		test: main
# 			./main < TestCase/MyInputTest.txt
# Where, your input test will consist of three integers for the exercise

# The special target "clean" is a convention for removing all generated files	
clean:
	rm -f a.out main main.o