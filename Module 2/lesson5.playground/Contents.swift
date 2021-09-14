class Person {
    public var name = "sabit"
    private var age = 25  // Abstraction
    
    func myfunc(){
        print("This person is \(name) from Person class")
    }
    
    func encapsulationExample () { // Encapsulation
        print("Age is : \(age + 10). This is an example of using abstraction to encapsulate some operation")
    }
}

final class Teacher: Person { // Inheritance (Inherit from Person class
    override func myfunc() { // Method Overriding (Polymorphism)
        print("This person is \(name) from Teacher class")
    }
}

var p = Person()
p.name = "Afrida"
print(p.myfunc())
print(p.encapsulationExample())

var t = Teacher()
t.name = "Khairul"
print(t.myfunc())

// Structures have no such ability. However, struct has some protocol to conform to

