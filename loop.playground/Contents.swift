import UIKit

var n:Int=200
var x:Int=2

for i in 1...n{
    print(x)
    x=x*2
    if((x)>n){break}
    
}
//second
n=3
for i in 1...n {
    print("xxx")
    print()
}
//third
//

n=4

for i in 1...n{
    
    for k in 1...i{
        print("x",terminator: "")
        
    }
    print()
  
}
//FOURTH

n=4

for i in 1...n{
    
    for k in 0...n-i{
        
        print(" ",terminator: "")
        
    }
    for j in 1...2*i-1{
        print("*",terminator: "")
    }
    print()
}
//fifth
//prime number
var num = 17
var prime = true

if num < 2 {
    prime = false
}else{
    for i in 2..<num {
        if num % i == 0 {
            prime = false
            break
        }
    }
}

if prime {
    print("prime")
} else {
    print("not prime")
}

