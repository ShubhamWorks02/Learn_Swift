import UIKit

//FUNCTION
//
//Function Declaration − tells the compiler about a function's name, return type, and parameters.
//
//Function Definition − It provides the actual body of the function.
//

//Function parameters are also called as 'tuples'.

//A function's arguments must always be provided in the same order as the function's parameter list

// func name (parameter ) -> return type {
//
//statement 1
//statement2
//return thing
//}

func name ()  {
    
    
    print("sdfg")
    return Void()
    
}


func name1 () -> Void  {
    
    
    print("sdfg")
    return Void()
    
}

name()
name1()

func student (name : String) -> String {
    
//   return String()
    return name
}
student(name: "hello")

func checkNum (num : Int) { // func takes let as by default type , to implement var you need to use inout
    //var is deprecated in swift 3 or 2
    
    var a = num
    //num = 4
    print(a)
    print(num)
    
}
//generic datatypes
//inout


