# Day 3

## Scope
| Variable type | Syntax | Scope |
| :--- | :--- | :--- |
| Class variable | `@@name` | Visible to the class, and sub classes |
| Instance variable | `@name` | Visible to a specific object, and the instance methods of that object |
| Global variable | `$name` | Visible to everything in the file |
| Local variable | `name`| Depends! |

* Scope defines when something (a variable) is visible to something else
* Scope defines what knows about/is able to access that variable
* In ruby, local variables created outside of a block, are visible to everything inside of that file
* In ruby, local variables created inside if statements, are visible
* In ruby, local variables created inside of a block are not visible outside of those blocks of those if statements  

## Loops

#### Loop
* A loop is a repeating a sequence of statements which tells the program to do something a certain number of times, or until a certain condition is met.

#### Infinite Loop
* A loop that runs until you kill the program
* Kill an infinite loop by typing `control` + `C`

#### Sentinel-controlled Loops
* A sentinel-controlled loop is used when the number of loops cannot be determined prior to loop execution (e.g, while, until)
* `while` syntax:
```ruby
while <boolean expression> do
  code
end
```
* `until` syntax:
```ruby
until <boolean expression> do
  code
end
```

#### Counter-controlled Loops
* A counter-controlled loop is used when the number of loops can be determined prior to loop execution (e.g, times)
* `times` syntax:
```ruby
fixnum.times
  code
end
```
* When `times` is used _without an iteration variable_ it is a **loop**, when it is used _with an iteration variable_ it becomes an **iterator**.


## Iterators

* An iterator is an object that traverses (i.e., iterates) over the elements in a collection (e.g., array) and usually does something with those elements
* Iterators are methods
* All iterators require blocks, and execute those blocks as many times as there are iterations
* Iterators return all the elements of a collection, one after the other
* When using an iterator its impossible to get an infinite loop, as the iterator handles these details for you
* The collection can later be changed without having to update the code block using the iterator, it handles those changes for you

#### `each`
* `Each` is an iterator that returns each value of the collection, one by one, to the block
* `Each` must be associated with a block
* The iteration variable is optional with each, but usually used
* Syntax (do...end is the block, variable is the iteration variable)
```ruby
collection.each do |variable|
  code
end
```
* `Each` can also be used with a range.
* A range is a set of values with a beginning and an end. The beginning value of a range is always included. When two dots are used, the end value is included. When three dots are used, the end value is not included.

#### `times`
* When `times` is used with an iteration variable it becomes an iterator over a certain range of values
* `Times` must be associated with a block, but the iteration variable is optional
* `Times` starts counting at 0, and goes up to 1 - the value places before `.times`
* `Times` syntax with iteration variable:
```ruby
Fixnum.times do |variable|
  code
end
```
