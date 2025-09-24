// This is an entire line of comment
//
// To code with C++, you will need:
// 
// 1. Request help from the appropriate library
// 2. Specify the namespace domain (optional)
// 3. Define a main() function
//
// Please complete a  C++ program that prints out:
//      Hello World
// With Cap-H and W.
// 
// Receives three numbers: a, b, c
// Prints out: 100a + 10b + c

// This is empty for now

// 1. This is IO library, that, we almost always request help from:
#include <iostream>
    // without this include, neither cout nor cin would be recognized
    // Try it! Comment out the above line and try to compile!


// 2. the namespace for iostream is std
//     using namespace std;   // optional but you would need to specify std:: for each iostream object


int main() { 
    std::cout << "Hello World" << std::endl; 

    int a;
    std::cout << "Please enter an integer: ";
    std::cin >> a;   // read an integer from keyboard and store it in a
    std::cout << "You entered: " << a << std::endl;

    // If you see the repetitive pattern of std::, you can uncomment the above
    //      using namespace std;
    // and then you can write the following instead:
    //      cout << "You entered: " << a << endl;

    return 0; 
}