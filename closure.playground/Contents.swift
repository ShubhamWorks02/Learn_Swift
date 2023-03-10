import UIKit

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
//////
///10/03
///10/03
///
func hesf (a:Int,b:String) -> (Int,String){//return type tuple can hold mulitple datatype in same tuple
    
    return (a,b)
    
}

let ghn =  hesf(a: 4, b: "ddsf")
print(ghn)

//Closure
//Closures are self-contained blocks of functionality that can be passed around and used in your code.
//a closure is a block of code that you can assign to a variable.
//QUESTIONS
//why need of closure
//how it works
// from which version it is introduced
//closure type of
//
//var birthday = {
//    print("happy birthday")
//}
//birthday()

let birthday : (String,Int)->() =  { wish,number in

    print("happy birthday \(wish)")


    print(type(of: wish))
}

birthday("shubham",4)
birthday("dsf",4)

// optional binding in closure

let optBirthday1 : (String?)->() =  { wish in // Closure expression
    
    print("happy birthday \(wish)")
    //wish = ""
    if let name = wish {
        print("binded")
        print(type(of: name))
    }
    print(type(of: wish))
}

var ghi : String?
ghi = "sff"

optBirthday1(ghi)
print(type(of: optBirthday1))


//The parameters of a closure aren’t named, unlike Swift functions.

let param: (String) -> () = { name in
    
}

var arrrr = [1,2,3,4,5]

//arrrr.swapAt(arrrr.firstIndex(of: 1)!, arrrr.firstIndex(of: 3)!)
arrrr[2]=arrrr[0]
//arrrr.insert(arrrr[0], at: 2)
print(arrrr)

//A closure is a block of code that you can pass around in your code

//arrrr.replace(arrrr[2], with: arrrr[0])



//switch dfdf {
//
//case 1:
//    print("dfdf")
//    retur
//default:print("df")
//}

//lifecycle
//types
//ways
//life ezz
//closure and completion
//func ret (){
//
//    var dfdf = 1
//    switch dfdf {
//
//    case 1:
//        print("dfdf")
//        return
//
//    case 2:
//        print("fs")
//    default:print("df")
//    }
//
//}
//ret()

//The in keyword separates the closure parameters and the closure body.

let birthday2 = { (name:String,number:Int) -> () in // type inference and CLOSURE expression syntax
    
    print(name)

}

birthday2( "nother type of closure",5)
 
//SYNTAX for closure
//let closureName:(parameter types) -> return type = { (parameter name:parameter type) -> return type in
//
//}


//A closure with no parameters and no return type, has the following closure type:

// () -> ()



let birthday3 = { (name:String,number:Int) -> Void in // PAssing Void instead of ()
    
    
    print(name)

}

birthday3( "nother type of closure",5)
//
//
let goodOfM  = { (name : String,hi : String)->String  in
    return "\(name) , \(hi)" //

}

print( goodOfM("dffgdf","dsfdfd"))


//let greeting:(String, String) -> String = { return “ Good \($0), \($1)! ” }
//let sdfj = greeting("good","morning")
//print(sdfj)

//Any closure parameter type or return type can be optional, like this: (String?, Int) -> Int?. You can also make the closure itself optional, which means that the variable, constant or property that references the closure can be nil.


let namexx = "dfdf"


let consf = { // we can use parent scope variable in closure
    print("dfdfd",namexx)
}

consf()

print(type(of: consf))

func namedfd () {
    
    consf()
    print(namexx)
    
}

namedfd()


func capture (namez :String)-> String{ // Closures & Capturing In Swift
    
    let x1 = "1"
    
    let capt = {
     
        return "local \(x1) and global namexx having \(namexx) and func param having \(namez)"
        
    }
    
    return capt()
    
}

print(capture(namez: "dsdsfdff"))

//First things first. When a closure captures a value, it automatically creates a strong reference to that value. When Bob has a strong reference to Alice, then Alice isn’t removed from memory until Bob is removed from memory.

//Strong References & Capture Lists
//First things first. When a closure captures a value, it automatically creates a strong reference to that value. When Bob has a strong reference to Alice, then Alice isn’t removed from memory until Bob is removed from memory.


//The weak keyword indicates that the captured value can become nil
//The unowned keyword indicates that the captured value never becomes nil

//You typically use unowned when the closure and the captured value will always refer to each other, and will always be deallocated at the same time. An example is [unowned self] in a view controller, where the closure will never outlive the view controller.
//In swift, the completion handler is a block of code that is used to perform and handle the completion state of a task.

//func normal (par : Bool){
//
//
//}
//
//normal(par: true)

func normalclosure (cls: (Int,Int)->Int ){
    
    print(cls(1,2))
    
}

normalclosure { q, s in

    return q+s

}
//
//let inp = (Int,Int) -> Int {
//
//}
//normalclosure (  let inp = (Int,Int) -> Int = { q, s in
//
//    return q+s
//
//})
//
var de = [4:5 , 5:6]

//retain count

//memory management
//which type when
//
let prac = { (a:Int,b:Int)->(Int,Int)
    in
    print(a,b)
    return (a,b)
}

prac(4,5)

