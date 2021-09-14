// Implicitly unwrapped optionals
var a:Int!
var b:Int! = nil

// Handling from crash by checking
if (a != nil) || (b != nil) {
    print(1+a+b)
}

// Optioanls
var c:Int?

// By using this wrapping Xcode let us remember that c was an optional
if c != nil {
    print(1+c!)  // c needs to be unwrapped here
}


// Way to exclude this reptitive unwrapping
// Optinal binding
var d:Int? = 10
if let y = d {
    print(y+1)
}

// Optional chaining
class Person {
    var name = "Sabit"
    
    func talk(){
        print("Hello!")
    }
}

var p1:Person? = nil
// p!.talk() // crash, to avoid this use optional chaining
p1?.talk()
print(p1?.name)

var p2:Person? = Person()
p2?.talk()
print(p2?.name)
