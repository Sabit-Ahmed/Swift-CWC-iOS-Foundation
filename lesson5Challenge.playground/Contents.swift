class Person {
    var name:String = ""
    func introduceMyself() {
        print("Hi, my name is \(name)")
    }
}

class Chef: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a chef!")
    }
}

class Poet: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a Poet!")
    }
}

class Astronaut: Person {
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm an astronaut!")
    }
}


var stringArray = ["Sally", "Sheldon", "Sabit", "Afrida"]
var classArray = [Chef(), Poet(), Astronaut()]
for _ in 1...10 {
    let newInstance = classArray[Int.random(in: 0...2)]
    newInstance.name = stringArray[Int.random(in: 0...3)]
    newInstance.introduceMyself()
}
