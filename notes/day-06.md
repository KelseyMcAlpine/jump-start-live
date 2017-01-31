# Day 6

## Symbols
* Symbols in Ruby are objects with specific names
* There can only ever be one symbol with the same nam in a program's execution
* If you are naming something, you should use a symbol
* If the contents of the individual characters are important then you should use a string
* Syntax:
```Ruby
: age # creates a symbol named age

"apple".to_sym # converts the string "apple" to a symbol

# symbols and Hashes
# red, blue, yellow, and purple are all symbols
# when ititalizing a hash, you do not need the preceding :
colors = {red: 32, blue: 13, yellow: 2, purple: 104}

# when accessing, you do need the :
puts "#{colors[:red] people love red}"
```

## Hashes
* Hashes are a collection of paired information
* Sometimes described as a collection of key-value pairs, or as a "look up table"
* Hashes use any object for their index
* Each pair has both a key and a value
* The keys in the has are unique, but values may be repeated
* Hashes store info in the order in which the keys were insterted, however you shouldn't rely on the order

#### Creating a Hash
```Ruby
# an empty hash
students = {}

# hash created with key,value pairs
# keys are symbols
soda = {coke: 3, sprite: 7, pepsi: 1}

# hash created with key,value pairs
# keys are numbers
# must use hash rocket
people = {104 => "Korica", 54 => "Jamie", 4 => "Kelly"}
```

#### Storing and Retrieving Data from a Hash
```Ruby
# will store the key,value pair into the hash
# if the key already exists, it will change the current value to the new value
hash[key] = value
```

#### Iterating Over a Hash
```Ruby
# iterating over key,value pairs
students.each do |name, age|
    puts "Student #{name} is #{age} years old"
end

# iterating over key,value pairs (better style)
students.each { |name, age| puts "Student #{name} is #{age} years old" }

# iterating over keys only
students.each_key do |name|
    puts "#{name}"
end

# iterating over keys only (better style)
students.each_key { |name| puts "#{name}" }

# iterating over values only
students.each_value do |age|
    puts "#{age}"
end

# iterating over values only (better style)
students.each_value { |age| puts "#{age}" }
```

#### Useful Hash Methods
| Method | Description |
| :--- | :--- |
| `h.clear` | Remove all key-value pairs from hash h |
| `h.empty?` | Return true if hash h contains no key-value pairs |
| `h.length` | Return the number of key-value pairs in hash h |
| `h.keys` | Return a new array with the keys from hash h |
| `h.values` | Return a new array with the values from hash h |
| `h.key(value)` | Return the key of an occurrence of a given value in hash h |
| `h.key?(key)` | Return true if key is present in hash h |
| `h.value?(value)` | Return true if value is present in hash h |

## Arrays vs Hashes Comparison

#### Arrays
* Arrays are ordered lists of items
* The order of the data is maintained and important
* Arrays have and index starting at 0, which cannot be changed
* Data is retrieved using the 0-based index

#### Hashes
* Hashed are a collection of paired information (also described as a collection of "key-value pairs" or a "look up table")
* Each pair has both a key and a value
* The keys in the hash are unique (not repeated)
* The values in a hash may be repeated
* Hashes store info in the order in which the keys were inserted, however you should never depend on this order

#### Similarities
* Both are collections that store and retrieve data
* If you try to access an element of an array or a hash that doesn't exist, the `nil` value will be sent back

#### Differences
* Arrays have fixed indexes (integers starting from 0)
* Hashes allow you to still store data but to define the index as any object

#### Tips
* If you want to store single pieces of info, use an array. If your data is better described as a pair, then use a hash.
```Ruby
# stores names of students in an array
names = ["Riley", "Sam", "Alex"]

# stores the names and ages of all students in a hash
# assuming no repeated names
# student name is the key
# student age is the value
c7 = {Riley: 29, Sam: 42, Alex: 29}

# stores the names, ages, and favorite colors of all students# assuming no repeated names
# student name is the key
# value is a hash containing key, value pairs
c7 = {
    Riley: {age: 29, color: "blue"},
    Sam: {age: 42, color: "yellow"},
    Alex: {age: 29, color: "blue"}
}

# alternative option
# c7 is an array of 3 hashes
# each hash has information on a single person
# they keys for each hash are name, age, and color
c7 = [
    {
        name: "Riley"
        age: 29
        color: "blue"
    }
    {
        name: "Sam"
        age: 42
        color: "yellow"
    }
    {
        name: "Alex"
        age: 29
        color: "blue"
    }
]
```
