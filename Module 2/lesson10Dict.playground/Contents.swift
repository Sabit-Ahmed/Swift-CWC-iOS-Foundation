var a:[String:String] = [String:String]()  // Create a empty dict instance
a["key_1"] = "value_1"   // Insert
print(a["key_1"])

// OR
var b = [String:String]()
b["key_1"] = "value_1" // Insert
print(b["key_1"])   // Retrieve

// Update
b["key_1"] = "value_2"
print(b["key_1"])

// Delete
b["key_1"] = nil
print(b["key_1"])


// Initialize a dict with key,value pair
var c = ["key_1":"value_1", "key_2":"value_2"]


// Looping through dict

// First learn about tuple --> (item1, item2)
var t:(String,String) = ("item 1", "item 2")
print(t.0)
print(t.1)


// two way to iterate through dicts

for kvp in c {
    print("Key is: \(kvp.key)")
    print("Value is: \(kvp.value)")
    print(kvp.self)
}

// OR
for (k, v) in c {
    print("Key is: \(k)")
    print("Value is: \(v)")
}
