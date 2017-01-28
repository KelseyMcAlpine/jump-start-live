# Day 1 Exercises

# Question 1.
# Discuss bad style Madlibs example


# Question 2.
# How would you modify the code below to improve the code style and readability?

  foods = ["shrimp", "cauliflower", "salmon", "garlic", "oysters",
  "salami", "tomatoes", "okra", "zucchini", "avocado"]

# outputs message to user asking how many foods that would like to see.
  print "\nHow many foods would you like to see? I suggest 10, but it's up to you. "
  items = gets.chomp.to_i

# outputs message based on numbed entered by the user
  if items > 10
    puts "Best I can do is 10. Let's do 10."
    items = 10
  elsif items >= 1 && items <= 10
    puts "Ok! Let's do " + items + "."
  else
    puts "We'll just pretend you said 10."
    items = 10
  end

# outputs fancy random menu to user
  puts "...Your Fancy Random Menu..."
  items.times do |i|
    y = foods [rand(0...(foods.length))]
      puts i.to_s + ": " + y
  end


# Question 3.
# Revisit your MadLibs code, and update your code to improve its style

# introduction for new user

puts "WELCOME TO MY MADLIB GENERATOR"
puts "Please enter some information below"

# asks user to input information for the madlib
print "Your Name: "
name = gets.chomp.capitalize

print "Another Name: "
name2 = gets.chomp.capitalize

print "Animal: "
animal = gets.chomp

print "Another Animal: "
animal_2 = gets.chomp.downcase

print "Verb: "
verb = gets.chomp.downcase

print "Adjective: "
adj_1 = gets.chomp.downcase

print "Another Adjective: "
adj_2 = gets.chomp.downcase

print "Noun (plural): "
noun = gets.chomp.downcase

print "Noun (singular): "
noun2 = gets.chomp.downcase

print "Place (type): "
place = gets.chomp.downcase

# prints user's custom madlib!
print "HERE'S YOUR MADLIB, #{name}:\n \n \n \"
THE BIG OL' #{animal.upcase} \"\n
#{name2.capitalize} was a big ol’ #{adj_1} #{animal.downcase}. Whenever the
#{animal.downcase} walked down the street, all the other animals would #{verb}.
It lived in a very #{adj_2} house, with lots of #{noun}. The neighbors all
thought the #{animal} was a real \"#{noun2}.\" #{name2.capitalize} felt like
something was missing... until one day a #{animal_2} moved in to the #{place}
nextdoor. The #{animal_2} also loved #{noun}, and they became fast friends!"


# Question 4.
# Bio Program
# Create a program that accepts input from the user and outputs a bio with that information
# Use up to five different attributes about the person to populate the bio
# Output should consist of a paragraph of output created from the users input
