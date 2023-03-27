import UIKit

//Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.
//CLASS exercise number based on class name
//CLASS exercise number based on class name
//CLASS exercise number based on class name

class One {
    
    var a : Int = 1
    var b : Int = 2
    
}

var one = One()
one.a = 3 //setting value
one.b = 4
print(one.a,one.b) //getting value


//•    Create a swift program to demonstrate usage of swift class for usage of multiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.

class Two {
    
    var name : String
    var college : String
    var dept : String
    
    init (name : String , college : String){
        self.name = name
        self.college = college
        self.dept = "General Dept"
    }
    
    init (name: String,dept: String){
        self.name = name
        self.dept = dept
        self.college = "Gtu"
    }
}

var two =  Two(name: "shubham", dept: "IT")
print(two.college,two.dept,two.name)
var two2 = Two(name: "Shubh", college: "LD")
print(two2.college,two2.dept,two2.name)

//•    Create a swift class without initializers and access (write, read) its properties using instance of class.

class Three {
    
    var a : Int = 1
    var b : Int = 2
    
}

var three = Three()
three.a = 5 //write property
print(three.a)


//•    Create a swift class which is having code to return square of given number and access this code using class instance.

class Four {
    
    func square(a : Int)->Int{
        
        return a*a
        
    }
}

var four =  Four()
four.square(a: 5)

//Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes.


class Five {
    
    var a : Int = 5
    
}

class A : Five {
    var b  : Int = 6
}

class B : Five {
    var c : Int = 8
}

var five  = Five()
var child1 = A()

print(child1.a,child1.b)
var child2 = B()
print(child2.c,child2.a)

//
//•    Create a swift class example to show use of swift base class which have some implementation inside any method. Now demonstrate usage of overriding that method implementation.

class Six {
    
    func method(){
        print("parent class method")
    }
    
}
class Ex1 : Six{
    
    override func method() {
        print("child class method")
    }
}
    
var ex1 = Ex1()
ex1.method()



//Create a swift class with an initializer in a manner that you can create this class using initializing value. And one function which takes int input and returns the power of class instance.
class Seven {
    
    var number : Int
    
    
    
    init (number : Int ){
        self.number = number
    }
    
    func power(a : Int)-> Int{
    var temp = 1
        for _ in 0..<a {
            temp = temp*number
        }
        return temp
    }
}

var seven = Seven(number: 5)
print(seven.power(a: 3))
//5^3 = 125

//•    Create a swift class example which has a parent class for vehicles, and child classes for two different vehicles e.g. (bike & car). You need to use common properties and method in the parent class and inside child class, there will be some different property which is not common.
//



class Vehicles {
    
    var vehicleType : String
    var numOfWheels : Int
    var name : String
    var price : Int
    var numOfGears: Int {
        return 4
    }
    init (vehicleType : String,numOfWheels : Int,name :String,price : Int){
        self.vehicleType = vehicleType
        self.numOfWheels = numOfWheels
        self.name = name
        self.price = price
    }
}

class Bike : Vehicles {
    
    var isSportsBike : Bool
    var hasGears : Bool
    override var numOfGears: Int {
        return hasGears ? 4 : 0
    }
    init(isSportsBike : Bool,hasGears : Bool){
        self.isSportsBike = isSportsBike
        self.hasGears = hasGears
        super.init(vehicleType: "TwoWheller", numOfWheels: 2, name: "Bike", price: 50000)
    }
    
}

class Car : Vehicles {
    
    var isSportsCar : Bool
    var isAutomatic : Bool
    override var numOfGears: Int {
        return isAutomatic ? 4 : 0
    }
    init(isSportsCar : Bool,isAutomatic : Bool){
        self.isSportsCar = isSportsCar
        self.isAutomatic = isAutomatic
        super.init(vehicleType: "FourWheeler", numOfWheels: 4, name: "Honda", price: 5000)
    }
    
}

var bike = Bike(isSportsBike: true, hasGears: false)
print(bike.numOfGears)


//•    Create a person swift class with person name initializer and create one function to greet that person.
//Example: let person1 = Person(name: Joe)
//Person1.greet() // This should print “Hello Joe”
//

class Person {
    var name : String
    func greet(){
        
        print("hello \(name)")
        
    }
    init(name : String){
        self.name = name
    }
}
var person = Person(name: "Shubham")
person.greet()


//•    Create a swift class with some property. And then set its value using initializer of class, then perform below actions.
//let example1 = Example()
//Example1.a = “Hello”
//let example2 = example1
//example2.a = “Hi”
//print(example1.a)
//print(example2.a)
//// Consider ‘a’ as string property of example class.
//--> Check these two print outputs and try to find out the reason for that output.


class Example {
    
    var a : String = "Default"
    
}

let example1 = Example()
example1.a = "Helloo"

let example2 = example1
example2.a = "Hi"
print(example1.a)
print(example2.a)

//Reason : Classes are Reference type and here we are passing refernce of one instance to another so value of 'a'' changes
//Reason : Classes are Reference type and here we are passing refernce of one instance to another so value of 'a'' changes

//Structure
//    •    Create one structure of type Work, which have some properties like work location, work hours and one string array of project names. And create a function inside structure which returns all project names for the person.
//
//
//
//
//

//
//
//
//
//// Consider two persons array for Joe and Harry. But in your code Its size can be vary.
//Output be like: Name: Joe, Gender: Male, Age: 27
//      Name: Harry, Gender: Male, Age: 21
//
//    •    Perform same example given in class question no 10 and check output using structure. Try to find difference between these two outputs and try to figure out the reason for that output.
//
//    •    Try to figure out basic difference between class and structures and give a demo for same.
//

struct Work {
    var loc : String
    var workHours : Int
    var arrOfNAmes : [String]
    
    func names (){
        
        for i in arrOfNAmes {
            print(i)
        }
      
    }
    init(loc : String,workHours : Int,arrOfNAmes : [String]){
        self.loc = loc
        self.workHours = workHours
        self.arrOfNAmes = arrOfNAmes
    }
}

var work = Work(loc: "IScon", workHours: 8, arrOfNAmes: ["Drone","defense"])
work.names()

// •    Create a structure example which demonstrates use of initializer in structures.


struct Work1 {
    
    var loc : String
    var workHours : Int
    var arrOfNAmes : [String]
    
   
//    init(loc : String,workHours : Int,arrOfNAmes : [String]){
//        self.loc = loc
//        self.workHours = workHours
//        self.arrOfNAmes = arrOfNAmes
//    }
}

var work1 = Work1(loc: "IScon", workHours: 8, arrOfNAmes: ["Drone","defense"])


//    •    Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters.

struct Param {
    
    var name : String
    var num : Int
    
    init(name : String,num : Int){
        self.name = name
        self.num = num
    }
    init (){
        self.name = "default name"
        self.num = 0
    }
}
var para = Param()
var para2 = Param(name: "shubham", num: 8)
print(para.num,para.name)
print(para2.name,para2.num)


//•    Create one structure which have initializer which takes array of int as input returns  two arrays one of all even numbers and another is all odd numbers.
//Input: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12]
//Output: even numbers are: [6, 8, 10, 8, 12]
//                 Odd numbers are: [1, 3, 5, 9, 7]


struct OddEven {
    
    var arr : [Int]
    
    init(arr : [Int]){
        self.arr = arr
    }
    func oddEve()->([Int],[Int]){
        var odd : [Int] = []
        var even: [Int] = []
        for i in arr {
            if i%2 == 0 {
                even.append(i)
            }else{
                odd.append(i)
            }
        }
        return (odd,even)
    }
}
var oddEv  = OddEven(arr: [1,2,34,5,6,7])

print(oddEv.oddEve().0) //odd
print(oddEv.oddEve().1)

//•    Create one swift structure program for person that contains basic details like name, age, gender. Then create one array of person with all details. Print all details of that array.

struct Person2 {
    var name : String
    var age : Int
    var gender : String
    var arrOfPerson : [Any]
    
    init(name : String,age : Int,gender : String){
        self.name = name
        self.age = age
        self.gender = gender
        self.arrOfPerson = [self.name,self.age,self.gender]
    }
}

var person2 = Person2(name: "Shubham", age: 20, gender: "Male")
print(person2.arrOfPerson)
print("name is : \(person2.name) , age is : \(person2.age) , gender is : \(person2.gender)")
//basic difference between structure and class
//Experiment
class StudentClass {
   var name: String
   var grade: Int
   init(name: String, grade: Int) {
      self.name = name
      self.grade = grade
   }
}
let student1 = StudentClass(name: "Bhatt Shubham", grade: 9)
let student2 = student1
student2.name = "Darshan Dangar"
print("student1 name: \(student1.name)")
print("student2 name: \(student2.name)")

struct StudentStruct {
   var name: String
   var grade: Int
}
let student3 = StudentStruct(name: "Bhatt Shubham", grade: 8)
var student4 = student3
student4.name = "darshan dangar"
print("student3 name: \(student3.name)")
print("student4 name: \(student4.name)")
    

