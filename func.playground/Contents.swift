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
////////09/03
///_ in param
////////////////////////
///FUNCTION implements on stack
///MEMORY IS ASSIGNED RUNTIME
///validation
func nothing () -> String {
    print("good morning")
    return "dfdsf"
}

/// adding descreption with add doc feature
func hello ()
{
   let a = nothing()
    print(a)
    nothing()
}

hello()

func h(a:Int,b:Int) -> (Int,Int)? {
    
    return (a,b)
    
}

if let t = h(a:6,b:7){
    
    print(type(of: t))
    
}
else{
    print("in else ")
}

// a function is defined by the "func" keyword.
//Note the difference between parameters and arguments: Function parameters are the names listed in the function's definition. Function arguments are the real values passed to the function. Parameters are initialized to the values of the arguments supplied.

//A function doesn’t need any object and is independent, while the method is a function, which is linked with any object.
//
//We can directly call the function with its name, while the method is called by the object’s name.
//
//Function is used to pass or return the data, while the method operates the data in a class.
//
//Function is an independent functionality, while the method lies under object-oriented programming.
//
//In functions, we don’t need to declare the class, while to use methods we need to declare the class.
//
//Functions can only work with the provided data, while methods can access all the data provided in the given class.


//Function parameters are also called as 'tuples'.

//var str:String = "sdfd   fg"
//var str2 = str.split(separator: " ")
//print(str2)
////var str2 : [String] = str.components(separatedBy: " ")
//
//var str3 = str2.joined(separator: " ")
//print(str3)
//// validation
//var ters: Set<[Int:Int]> = [
//    [1:2]
//]
//ters.insert([5:6])
//print(ters.count)


//Optional Function
//You can mark a method with optional, but only for @objc protocols and methods. For pure Swift code, you can instead use a property whose type is the same as the type of the function you want be optional (but wrapped into an Optional),

func naming (a:Int?,b:Int?)//opt parameters
{
    
    print(type(of: a))
    if let x = a {//binding
        print("type of ",type(of: x))
    }
    print(type(of: a))
    
}

naming(a: 4, b: 5)

//Default value in func

func def(a:Int = 5,b:Int){
    
    print(a)
    print(b)
}

def(b:7)
def(a:3,b:6)

func def2(paraname a:Any = 5,b:Int){//external parameter name to make their purpose more clear.
    
    print(a)
    print(b)
}

def2(paraname: "dfd",b:0)
//Extra argument 'a' in call      def2(a:4,b: 3)
def2(b:7)


//When we want to define function with multiple number of arguments, then we can declare the members as 'variadic' parameters.

func number <a>(names: a...){
    
    for i in names{
        
        print(i)
        
    }
}


number(names: 5,68,8)

//Functions by default consider the parameters as 'constant',
//Functions by default consider the parameters as 'constant',

func swap(a: inout Int,b: inout Int){//using inout param and implementing swap
    
    let temp = a
    a = b
    b =  temp
    
}

var c = 4
var d = 5

swap(a: &c, b: &d)
print(c,d)

func sum (a:Int,b:Int)->Int{
    
    return a+b
    
}
print(type(of: sum))

var add = sum
print(add(4,5))
////////////////
func another (add: (Int,Int) -> Int,b:Int,c:Int){

   print( add(b,c))

}

another(add: sum, b: 5, c:6)
//print(type(of: add))
//print(add(5,6))

//GENERICS
//GENERICS
//GENERICS

func swapTwoValues<A>(_ a: inout A, _ b: inout A) -> String { // Here A is placeholder for type
    
    let temporaryA = a
    a = b
    b = temporaryA
    return "a is \(a) and b is \(b)"
}

var a : String = "first"
var b : String = "sec"

print(swapTwoValues(&a, &b))
print(a,b)

var x : Int = 6
var y : Int = 7

print(swapTwoValues(&x, &y))
// in  swift function are first class citizen
//n Swift – the new programming language introduced by Apple – functions are first class citizens. This basically means, that a function can be passed as a parameter, //returned from another function or assigned to a value. It allows us to do a lot of useful stuff with them
////
/////
///
///
//CLOSURES

//{
//    (param)->return type in
//    logic
//}

let p = {
    
    print("in closure")
    
}
p()
print(type(of: p))

var arr: [Int] = [1,2,3,4,5]
//print(arr.replacing(arr[2], with: arr[0]))
arr.removeAll(keepingCapacity: true)
//arr = []
//arr.reserveCapacity(10)
print(arr)
print(arr.capacity)

//arr.replace(arr.firstIndex(of: 3), with: arr.firstIndex(of: 1))

//arr.swapAt(0, 2)

print(arr)


// func ref or value type
//
