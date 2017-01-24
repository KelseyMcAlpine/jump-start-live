# Day 2 Notes
## Assignment Statements
* Assignment statements are read from right-to-left
* Use phrases like "assigns" or "stores the value" instead of "equals"
* Compound assignment statements can be used to make your code shorter. Compound assignment statements can only be used if the variable (left side) has already had a value declared first

| Compound Statement | Long Version |
| :---------- | :---------- |
| `x += 3` | `x = x + 3` |
| `x -= 4` | `x = x - 4` |
| `x /= 2` | `x = x / 2` |
| `x *= 8` | `x = x * 8` |

## Boolean Expressions
* A boolean expression is an expression that is either `true` or `false`
* Boolean expressions are commonly used in `if/elsif` statements and `while` loops

### Precedence / Order of Operations
| __Priority__ | __Operation__ |
| :--- | :--- |
| 1 | parens |
| 2 | unary operations i.e. `!`` |
| 3 | multiplication, division, mod `%`|
| 4 | addition, subtraction, string concatenation |
| 5 | less than, less than or equal to, greater than, greater than or equal to |
| 6 | equal to, not equal to |
| 7 | and |
| 8 | or |

### Relational Operators
* Relational operators allow you to compare two values
* In ruby you can use relational operators on numbers and strings
* The opposite of `>` is `<=` and the opposite of `<` is `>=`

| __Operator__ | __Description__ | __Example__ | __Result__ |
| :--- | :--- | :--- | :--- |
| `==` | equals | `1 + 1 == 2` | `true` |
| `!=` | does not equal | `3.2 != 2.5` | `true` |
| `<` | less than | `10 < 5` | `false` |
| `>` | greater than | `10 > 5` | `true` |
| `<=` | less than or equal to | `126 <= 100` | `false` |
| `>=` | greater than or equal to | `5.0 >= 5.0` | `true` |

### Boolean Values
* The two possible boolean values are `true` and `false`
* A non-boolean value that evaluates to true, is called "truthy"
	* Everything in ruby is "truthy" except for `nil`
* A non-boolean value that evaluates to false, is called "falsey", also sometimes "falsy"
	* `nil` is the only "falsey" value in ruby

### Logical operators
| __Operator__ | __Description__ | __Example__ | __Result__ |
| :--- | :--- | :--- | :--- |
| `&&` | and | `(2 == 3) && (-1 < 5)` | `false`|
| `||` | or | `(2 == 3) || (-1 < 5)` | `true` |
| `!` | not | `!(2 == 3)` | `true` |

| __p__ | __q__ | __p && q__ | __p &#124;&#124; q__ |
| :--- | :--- | :--- | :--- |
| `true` | `true` | `true` | `true` |
| `true` | `false` | `false` | `true` |
| `false` | `true` | `false` | `true` |
| `false` | `false` | `false` | `false` |

| __p__ | __!p__ |
| :--- | :--- |
| `true` | `false` |
| `false` | `true` |

### DeMorgan's Laws
* `!(p && q)` can also be described as `!p || !q`
* `!(p || q)` can also be described as `!p && !q`
* the latter version should be used as it is simpler to understand and evaluate

### Short Circuit Evaluation
* The second argument is only evaluated if the first argument is not enough to determine the overall value of the expression.

## Conditionals
* Conditionals allow you to control the flow of your program
* `elsif` and `else` statements must be paired with an `if`
* In an if/elsif statement 0 or 1 of the blocks may execute
* In an if/elsif/else statement 1 block will execute

### Postfix Conditional
* A way to shorten your code when you have only one test to perform
``` ruby
name = gets.chomp
puts "You're rad!" if name == "Kelsey"
```

### Case statements
* A good option when you want to test a number of cases on a single variable
``` ruby
grade = gets.chomp
case grade
# comma is "or"
when "A", "B", "C"
  puts "you passed"
when "D"
  puts "you barely passed"
when "F"
  puts "you did not pass"
end
```
