var a:[Any] = [0, "a", 2, 5.5]
print(a)

a.shuffle()
print(a)

print(a.count)

// print(a.contains(2))   --->  error (Protocol 'Any' as a type cannot conform to 'Equatable')

var b = [1, 2, 3, 3]

print(b.contains(2))
// print(a.firstIndex(where: 2))  --->  error (Protocol 'Any' as a type cannot conform to 'Equatable')
print(b.firstIndex(of: 2))
print(b.lastIndex(of: 3))


var rand = b.randomElement()
print(rand as Any)
