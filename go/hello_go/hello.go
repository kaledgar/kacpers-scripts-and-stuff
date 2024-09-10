/* 
hello world code
1. Import the popular fmt package, which contains functions for formatting text, including printing to the console. 
	This package is one of the standard library packages you got when you installed Go.
2. Declare a main package (a package is a way to group functions, and it's made up of all the files in the same directory).
3. Implement a main function to print a message to the console. A main function executes by default when you run the main package.

To run: 

go run hello

or:

go mod init my_first_go_module/hello
go run .
*/

package main
import "fmt"

func main() {
    fmt.Println("Hello, World!")
}