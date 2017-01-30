# Question 1
# Write a program that allows a user to play a guessing number game.
# Your program should generate a random number between 0 – 1000
# (including 0, but not including 1000). Allow the user to make a
# guess until they guess the answer. After each guess you should
# print "higher" or "lower". When they guess it correctly print
# a winning message along with their total number of guesses.

# generates random number between 0 and 1000
# sets counter for user's number of guesses
number = rand(0..1000)
user_guesses = 1

# prompts user to guess number
puts "I'm thinking of a number between 0 and 1000."
print "Guess my number: "
guess = gets.chomp.to_i

# outputs message to user telling them if their guess was highter
# or lower than the randomly generated number until the user is able
# guess the correct number. Adds 1 to the user's number of gueses
# for each attempt.
while number != guess do
  if guess > number
    puts "LOWER"
  else
    puts "HIGHER"
  end
  print "Guess my number: "
  guess = gets.chomp.to_i
  user_guesses += 1
end

# prints number of guesses it took the user to guess the correct number
print "YOU GOT IT IN #{user_guesses} GUESSES!"

# Question 2
# Write a program that plays duck duck goose. Allow the user to enter the
# player's number they want to call goose on, and then say "duck" for
# each player before the "goose", then say "goose" for the chosen player.

# prompts the user to enter which player they want to "goose"
print "Which player do you want to Goose? "
goose = gets.chomp.to_i
player_number = 1

# lists all the players that are "Ducks"
while player_number < goose
  puts "Player ##{player_number}: Duck"
  player_number += 1
end

# displays the "Goose"
puts "Player ##{goose}: GOOSE"

# Question 3
# Write a program that allows a user to enter the number of petals
# on a flower. Then one by one, print “plucking petal #1: they love
# me!”. Alternate “They love me” and “They love me not” as well as
# increase the petal number for each petal.

# prompts user to enter the number of petals on a flower
puts "OOH! What's that? A pretty flower?"
print "How many petals does it have? "
total_petals = gets.chomp.to_i
petal_number = 1

# outputs message to the user that alternates between "they love me!"
# and "they love me not!" based on the petal number
while total_petals >= petal_number
  if petal_number % 2 == 0
    puts "Plucking petal ##{petal_number}: THEY LOVE ME NOT!"
  else
    puts "Plucking petal ##{petal_number}: THEY LOVE ME!"
  end
  petal_number += 1
end
