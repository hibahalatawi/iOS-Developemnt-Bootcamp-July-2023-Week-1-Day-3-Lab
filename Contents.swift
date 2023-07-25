
import Swift
import Foundation



//task1
/*Create a function greetUser that takes a String parameter and returns a greeting message.
 Call the function with different names and print the output.*/

func greetUser (name:String) -> (String){
    let message = " HI " + name
    
    return (message)
}
greetUser (name: "Hibah" )







//task2
/*Write two functions named calculateArea:
One that takes the radius of a circle and returns its area.
Another that takes the length and width of a rectangle and returns its area.
Call both functions with appropriate arguments and display the results.*/

func calculateArea (radius:Double)-> (Double){
    let AreaCircle = Double.pi * pow (radius, 2)
    return AreaCircle
}
func calculateArea (length:Double, width:Double)-> (Double){
    let AreaRectangle = Double (length * width)
    return AreaRectangle
}

calculateArea(radius: 2)

calculateArea(length: 3, width: 6)










//task3
//Define a function mathOperation that takes two integers and a string representing an operation ('add', 'subtract', 'multiply', 'divide').
 //Inside mathOperation, create nested functions for each operation and return the result accordingly.
 //Call mathOperation with different numbers and operations.

func mathOperation ( num1: Int, num2:Int , operation: String) -> Int {

    func add(num1:Int, num2:Int) -> Int {
        return num1 + num2
    }

    
    func subtract(num1:Int, num2:Int) -> Int {
        return num1 - num2
    }

    func multiply(num1:Int, num2:Int) -> Int {
        return num1 * num2
    }


    func divide(num1:Int, num2:Int) -> Int {
        return num1 / num2
    }

    
    if operation == "add"{
        return add(num1: num1, num2: num2)
    }
    else   if operation == "subtract"{
        return subtract(num1: num1, num2: num2)
    }
    else   if operation == "multiply"{
        return multiply(num1: num1, num2: num2)
    }
    else   if operation == "divide"{
        return divide(num1: num1, num2: num2)
    }
return 0
}

mathOperation (num1: 2, num2: 4, operation: "add")
mathOperation (num1: 5, num2: 1, operation: "subtract")
mathOperation (num1: 4, num2: 8, operation: "multiply")
mathOperation (num1: 16, num2: 2, operation: "divide")











 //task4
//Create an array of integers and use the map function to transform each element by adding 1 to it.
//Use the filter function to keep only even numbers from the array.
//Utilize the reduce function to find the sum of all elements in the array.


let myarray: [ Int] = [1, 2, 3 ,4 ,5 ,6 ,7]

let aftermap =  myarray.map { i in
    Int(i)+1
    
}
    print(aftermap)

let afterFilter = myarray.filter { $0 % 2 == 0}
    print (afterFilter)

let total = myarray.reduce(0, +)
    print (total)













//task5
//Create a closure that takes integer and multiply it by itself and returns the result of this multiplication.

func MyClosure (num1: Int) -> Int {
  return num1 * num1
}
MyClosure(num1: 3)



//Create an array of integers and use the map function and pass your closure to the map function, finally print each element using forEach function.
let MyArray: [ Int] = [1, 2, 3 ,4 ,5 ,6 ,7]
let ArrayAftermap =  MyArray.map { i in
     MyClosure(num1: i)
}
print(ArrayAftermap)
