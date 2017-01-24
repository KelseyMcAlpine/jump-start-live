# Day 2 Exercises
_In one Ruby file, write code to solve the problems below. Your code should print out each problem statement, followed by the output from the conditional statement(s)._

1. Prompt for a number. If the number is greater than `70`, print `PASSING`; otherwise, print `NOT PASSING`.
```ruby
# prompts user to input a number
print "Enter a number: "
number = gets.chomp.to_i

# outputs message to the user based
# on whether or not their number
# is greater than or equal to 70
if number >= 70
  print "PASSING"
else
  print "NOT PASSING"
end
```    

1. Prompt for a string.  If the string is equal to `green`, print `GO`, otherwise, print `STOP`.
```ruby
# prompts user to input a string
print "Enter anything you'd like: "
input = gets.chomp

# outputs message to the user based
# on user's input
if input == "green"
  print "GO"
else
  print "STOP"
end
```

1. Prompt for a number.  If the number is even, print `EVEN`, otherwise, print `ODD`.
```ruby
# prompts user to enter a number
print "Enter a number: "
number = gets.chomp.to_i

# outputs whether or not the number
# the user entered is even or odd
if number % 2 == 0
  print "EVEN"
else
  print "ODD"
end
```
1. Prompt for a number. If the number is evenly divisible by `5`, print `MULTIPLE OF 5`, otherwise, print `NOT A MULTIPLE OF 5`.    
```ruby
# prompts user to enter a number
print "Enter a number: "
number = gets.chomp.to_i

# outputs message to the user based on
# if the number entered by the user
# is divisible by 5
if number % 5 == 0
  print "MULTIPLE OF 5"
else
  print "NOT A MULTIPLE OF 5"
end
```

1. Prompt for a number. If the number is less than `10`, print `ONE DIGIT`. If the number is `100` or greater, print `THREE DIGITS`, otherwise print `TWO DIGITS`.
```ruby
# prompts user to enter a number
print "Enter a number: "
number = gets.chomp.to_i

# outputs message to the user based on
# the number of digits in the number
# entered by the user
if number < 10
  print "ONE DIGIT"
elsif number >= 100
  print "THREE DIGITS"
else
  print "TWO DIGITS"
end   
```

1. Prompt for a jersey number. If that number is `12`, `71`, or `80`, print `That number is retired from the Seattle Seahawks!`, otherwise do nothing.
```ruby
# prompts user to enter a jersey number
print "Enter a jersey number: "
number = gets.chomp.to_i

# outputs message to the user if the user
# entered a 12, 71, or 80
if number == 12 || number == 71 || number == 80
  print "That number is retired from the Seattle Seahawks!"
end
```

1. Prompt for a state. If the state is `Washington`, `Oregon`, or `Idaho`, print `This state is in the PNW`, otherwise print `You should move to the PNW; it’s great here!`
```ruby
# prompts user to enter their home state
print "What state are you from?"
state = gets.chomp.capitalize

# outputs message to the user
# based on the state entered
if state == "Washington" || state == "Oregon" || state == "Idaho"
  print "This state is in the PNW"
else
  print "You should move to the PNW; it's great here!"
end
```

1. Prompt for a one of the following: `SHORT`, `TALL`, `GRANDE`, `VENTI`. Print out the number of ounces that drink includes (`8`, `12`, `16`, `20` respectively).
```ruby
# prompts user to input a drink size
print "What size drink would you like? We offer short, tall, grande, and venti.\n"
print "Enter your selection: "
drink = gets.chomp.upcase

# outputs the number of ounces in the drink
# size entered by the user
if drink == "SHORT"
  print "A short has 8 OZ."
elsif drink == "TALL"
  print "A tall has 12 OZ."
elsif drink == "GRANDE"
  print "A grande has 16 OZ."
elsif drink == "VENTI"
  print "A venti has 20 OZ."
else
  print "I'm sorry, we don't carry that size."
end
```

1. Prompt for rate of pay and hours worked. Calculate gross pay. Provide time-and-a-half for hours worked beyond `40`  (e.g., if you get paid $10/hr and work 45 hours in a week, you would gross $745 (`40 x 10 + 5 x 15`).
```ruby
# prompts user to input rate of pay and hours worked
print "What is your hourly rate?: $"
rate = gets.chomp.to_f
print "Hours worked: "
time = gets.chomp.to_f

# calculates user's gross pay
if time <= 40
  print "You earned $#{rate * time}"
else
  overtime = time - 40
  reg-time = 40
  overtime-rate = hourly-rate * 1.5
  print "You earned $#{reg-time * rate + overtime * overtime-rate}"
end   
```

1. Rewrite the solution to the previous problem adding this modification: do not process any employee if their hours worked is greater than `60`, instead display the message `Please see manager`.
```ruby
```
