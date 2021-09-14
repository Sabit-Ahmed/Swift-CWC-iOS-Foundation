class Person {
    var name = ""
}

struct TalkShowHost {
    var name = ""
}

func changeName (p: TalkShowHost) {
    print(p.name)
    // Can not change the copied item which is received as parameter. Need to assign again and then it can be changed
    // That means, p.name = "something" --> can't be done
    var c = p    // Making a copy in memory (Value types)
    c.name = "inside changeName" // Now change by updating the copied item
    print(c.name)
}

func changeName2 (p: Person) {
    print(p.name)
    p.name = "inside changeName"  // This time the instance name can be changed as it is not copied memory, rather it is just the same instance of Person class.
    print(p.name)
}

var a = TalkShowHost() // Making a copy in memory (Value types)
a.name = "Sabit"       // Now change by updating the copied item

var b = a          // Making a copy in memory (Value types)
b.name = "Afrida"  // Now change by updating the copied item

print(a.name)
print(b.name)
changeName(p: a) // Making a copy in memory (Value types)


var x = Person()
x.name = "Sabit"

var y = x
y.name = "Afrida"  // The last change will be print out

print(x.name) // Not making any copy. It is pointing to the same instance of Person (Reference types)
print(y.name) // Not making any copy. It is pointing to the same instance of Person (Reference types)
changeName2(p: x) // Not making any copy. Referencing the same Person instance
