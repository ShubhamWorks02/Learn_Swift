import UIKit

//OPTIONAL
/* so there is multiple ways to operate with optionals and names are forced unwrapping and optional binding
optional binding is much safer compared to first one */
var first : String?
first="undestanding opt"
//print(first!)//forced unwrapping much riskier
if first != nil{
    print("first has value")
}else
{
    print("value = nil")
}

if let ini = first {
    print("if first has \(ini)")
}else {print("no value move further")}
//Optionals are similar to using nil with pointers in Objective-C
//AUTOMATIC UNWRAPPING
var sec:String!
sec="pole"
if sec != nil {
    print(sec)
}
else
{
    print("my str has val")
}

//typecasting with opt
//forced wn eays
//how many ways of opt bindi

//as ! ?

let some:Any?=7
print(some)
//let gh:Int=some
//print(gh)
//print(some)
var integerValue = 42
if(integerValue is Int){print("type checking")}
var stringValue = String(integerValue)
//var doubleValue = integerValue as! Double
var floatValue = integerValue as? Float
//floatValue=integerValue??
//if let floatValue = floatValue{
//    print(floatValue)
//}
//
//if let x = floatValue{
//    print(type(of: x))
//}else{print("hhj")}


//print(floatValue)
//if(doubleValue is Optional<Double>) {print(type(of: doubleValue))}
//print(stringValue)
//as! for force downcasting
//as? for optional downcasting
//When you upcast, you cast from a subclass to a superclass (upwards)
//When you downcast, you cast from a superclass to a subclass (downwards)
/*An expression that uses as? will return an optional value. When the downcast fails, the expression returns nil. When it succeeds, it returns a value.
 An expression that uses as! will return a non-optional value. When the downcast fails, your code crashes with a fatal error. When it succeeds, it returns a value.*/
//There is only seven ways to unwrap an optional in Swift
//var a : String?="hello"
//var x:String = a!//forced unwr
//var a = x!//implicit
//guard
//opt binding
// chaining
//pattern
var opt:String?
//guard let hellox = opt else {
//
//    print("only two ways for optional binding")
//
//}

var str:String?
str="jhs"
var jhg = str ?? "helaf"
//var uio:Int?
//
//print(uio!)
