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
```
while <boolean expression> do
  code
end
```
* `until` syntax:
```
until <boolean expression> do
  code
end
```

#### Counter-controlled Loops
* A counter-controlled loop is used when the number of loops can be determined prior to loop execution (e.g, times)
* `times` syntax:
```
fixnum.times
  code
end
```
* When `times` is used _without an iteration variable_ it is a **loop**, when it is used _with an iteration variable_ it becomes an **iterator**.


## Iterators
