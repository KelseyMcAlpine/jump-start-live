# Day 5

## Nil
* Everything in Ruby is an object (even `nil` is an object)
* `nil` is the default value of many variables when they are first created and before you store something else in them
* To check if something is `nil` you can use the `.nil?` method
* Everything is not automatically `nil`. You do need to declare it first. i.e. `puts x` is undefined, _not_ `nil`

## Arrays
* Arrays are ordered collections of data.
* Data in an array can be accessed with a 0-based index.
* You cannot change the indexes of an array.
* You can also used negative indexes to look at an array from the end
* An array is a data structure (used to organize and store information).
* Arrays are used to group data together and make it easier to access.

### Creating an Array
**Using []**
```
# creates an empty array named list
list = []

# creates an array names list, storing 1, 2, 3
list = [1, 2, 3]
```
**Array.new**
```
# creates an empty array named list
list = Array.new

# creates an array of length 3, storing nil in each index
list = Array.new(3)

# creates an array of length 5, storing "Ada" in each index
ada = Array.new(5, "Ada")

# passes a block as a parameter
# creating an array of multiples of 2, named mult2
mult2 = Array.new(5) { |i| i * 2 }
```
### Adding to the end of an Array
**push**
* Push can accept 1 or more elements
```
list = ["apple", "orange", "kiwi"]
list.push("banana")
# list is now ["apple", "orange", "kiwi", "banana"]
list.push("pear", "nectarine")
# list is now ["apple", "orange", "kiwi", "banana", "pear", "nectarine"]
```
**shovel** `<<`
* The shovel method can only accept 1 element
```
list = [true, false]
list << false
# list is now [true, false, false]
list << false, true # error!
```

### Printing an Array
* 'puts' will list each element on its own line
* Using `print` or `puts` with string interpolation and the array will display as a comma separated list, which is usually easier to read
```
arr = Array.new(3, 0)
# This will display ..
# 0
# 0
# 0
puts arr

# This will display ...
# [0, 0, 0]
print arr

# This will display ...
# [0, 0, 0]
puts "#{arr}"
```

### Iterating Over an Array
* Iterating over an array is the process of looking at each element of an array and performing some action
* You can use either a `do ... end` block or a block with curly braces for the each method.
* By convention `do ... end` should be used for multi-line blocks
* Curly braces should be used for single-line blocks. Keep in mind though, that curly braces have high precedence when compared to `do ... end` blocks
**each**
```
nums = [1, 3, 5]
nums.each do |num|
  puts num
end

nums.each { |num| puts num }
```
**each with index**
```
nums = [2, 4, 6]
nums.each_with_index do |num, index|
  puts "#{index}: #{num}"
end

nums.each_with_index { |num, index| puts "#{index}: #{num}" }
```

### Useful Array Methods
| Method | Description |
| :--- | :--- |
| `arr.length` | Returns the number of elements currently stored in arr |
| `arr.empty?` | Returns `true` if there are no elements in arr, otherwise returns `false` |
| `arr.first` | Returns the first element from arr |
| `arr.last` | Returns the last element from arr |
| `arr.take(n)` | Returns the first n elements from arr |
| `arr.include?(element)` | Returns `true` if element is stored in arr, otherwise returns `false` |
