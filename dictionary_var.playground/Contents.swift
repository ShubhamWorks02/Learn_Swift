import UIKit

var greeting = "Hello, playground"
//string traversing

for i in 0..<greeting.count{
    
    let ch = greeting[greeting.index(greeting.startIndex,offsetBy: i)]
    print(ch,terminator: "")
}
        
print()

// let char = str[str.index(str.startIndex, offsetBy: i)]
for i in greeting {
    print(i,terminator: "")
}
//////some variable exercise in lms
greeting+="welcome"//another way to concatenate with assignment op
print(greeting)
var height:Int=5
print("height")
var length:Float=8.9
print(length)
var name:String="sdff"
print(name)
var yu : Double = 9.8
print(yu)
var isStudent: Bool = true
print(isStudent)
//PRN
let R: Double = 0.15
var P: Double = 1000.0
var N: Double = 2.0
var finAmout:Double = P*R*N
print(finAmout)
let x: Int = 10
let y: Int = 20
let sum = x + y
let product = x * y
let quotient = y / x

//print("Integer ops:")
//print("\(x) + \(y) = \(sum)")
//print("\(x) * \(y) = \(product)")
//print("\(y) / \(x) = \(quotient)")

let a: Float = 3.14
let b: Float = 2.0
let c: Float = 1.5
let floatSum = a + b + c
let floatProduct = a * b * c
let floatQuotient = b / c

//print("Float ops:")
//print("\(a) + \(b) + \(c) = \(floatSum)")
//print("\(a) * \(b) * \(c) = \(floatProduct)")
//print("\(b) / \(c) = \(floatQuotient)")

print("moving on to dict")

//dictionary

var code = [

"a" : "b",

"b" : "c",

"c" : "d",

"d" : "e",

"e" : "f",

"f" : "g",

"g" : "h",

"h" : "i",

"i" : "j",

"j" : "k",

"k" : "l",

"l" : "m",

"m" : "n",

"n" : "o",

"o" : "p",

"p" : "q",

"q" : "r",

"r" : "s",

"s" : "t",

"t" : "u",

"u" : "v",

"v" : "w",

"w" : "x",

"x" : "y",

"y" : "z",

"z" : "a"

]

var newCode : [String:String] = [:]

for  (keyss,valss) in code {
    
    newCode[valss]=keyss
    
}
//print(newCode)

var encodedMessage = "uijt nfttbhf jt ibse up sfbe"

var decodedMsg:String=String()

for ch in encodedMessage {

    if (ch == " "){

        decodedMsg+=" "

    }else if let decodeCh = newCode[String(ch)]{

       decodedMsg=decodedMsg+decodeCh

    }

}
print(decodedMsg)

//second AND THIRD

var people: [[String:String]] = [

[

"firstName": "Calvin",

"lastName": "Newton"

],

[

"firstName": "Garry",

"lastName": "Mckenzie"

],

[

"firstName": "Leah",

"lastName": "Rivera"

],

[

"firstName": "Sonja",

"lastName": "Moreno"

],

[

"firstName": "Noel",

"lastName": "Bowen"

]

]

var arr : [String] = []

for manas in people {
    
    var temp : String
    temp=manas["firstName"]!+" "+manas["lastName"]!
    arr.append(temp)// i can save space by not declaring variable temp but it looks good so i did it , will do optimization later
    
}
print(arr)
//NOTE ------ SECOND PROBLEM IS SUBPROBLEM OF THIRD PROBLEM SO I SOLVED THIRD PROBLEM AND SECOND ALSO GETS SOLVED


//FOURTH
var peoples: [[String:Any]] = [

[

"firstName": "Calvin",

"lastName": "Newton",

"score": 13

],

[

"firstName": "Garry",

"lastName": "Mckenzie",

"score": 12

],

[

"firstName": "Leah",

"lastName": "Rivera",

"score": 10

],

[

"firstName": "Sonja",

"lastName": "Moreno",

"score": 3

],

[

"firstName": "Noel",

"lastName": "Bowen",

"score": 16

]

]

var  score : Int=0
var naam :String=""
for manas in peoples {
    //checking for lowest
    if let x = manas["score"] as? Int{
        if(score < x){
            
            score=x
            
            naam=manas["firstName"] as! String
            naam+=manas["lastName"] as! String
        }
        
    }
    
    
    
}
print(naam)




////////////sixth
var numbers  = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
numbers.sort(by: <)
print(numbers)
var dict: [Int:Int] = [:]

//var another  = Dictionary<Int,Int>()

for i in numbers {
    
    dict[i]=0
    //dict.updateValue(dict[i]!+1, forKey: i)
}
print(dict)
for i in numbers {

    dict.updateValue(dict[i]!+1, forKey: i)

}
print(dict)
let another = dict.sorted(by: <)

print(another)
//
//class A {
//
//}
//let a : A = A()
//var sw:Int=4
//switch sw {
//
//case 1:
//
//case 2:
//
//case 3:
//}
//
//var str1 : String
//var str2 : String?
//var str3 : String!
//
//let arrr=[4,5]

