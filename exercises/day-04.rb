# Day 4 Exercise: Password Verification
# Many companies have password requirements (must include a letter,
# a number and a symbol for example and require a password of a
# specific length). We're going to write a program that will read
# in a proposed password and only accept it if it meets all rules.

# Create a program that will:
# Prompt a user for input (for a new password)
# Read in the proposed Password to a variable
# If the password contains a number and a symbol (@, %, *, or !)
# and contains 8 or more characters then accept the password
# and congratulate the user, if not make them reenter the password
# until they enter an acceptable password

# Optional Additions:
# Make the user enter the password a second time to verify,
# and if it's not the same as the original password, make
# them repeat the process
# Make them include a capital and a lowercase letter
# Let them know what they did wrong

# prompts user to enter a valid password
puts "Please create a password. Passowords must contain a number,"
puts "symbol, and contain 8 or more characters to be valid."
print "Enter password: "
password_1  = gets.chomp
print "Confirm password: "
password_2 = gets.chomp

# defines special characters and sets all conditions as false
special = "`~!@#$%^&*()-_+=}{[]|>/:;"
has_number = false
has_special = false
has_capital = false
has_lowercase = false
has_match = false
has_length = false

# checks to see if all conditions for a new password have been met.
until has_number && has_special && has_capital && has_lowercase && has_length && has_match
  if password_1 == password_2
    has_match = true
  end

  if password_1.length >= 8
    has_length = true
  end

  password_1.length.times do |x|
    if password_1[x] == "0" || password_1[x].to_i != 0
      has_number = true
    elsif special.include?(password_1[x])
      has_special = true
    elsif password_1[x] == password_1[x].upcase
      has_capital = true
    elsif password_1[x] == password_1[x].downcase
      has_lowercase = true
    end
  end


  # displays specific error messages if passsword does not meet
  # all criteria for new password, and prompts user to try again.
  if !has_number || !has_special || !has_capital || !has_lowercase || !has_length || !has_match
    if !has_number
      puts "ERROR. Password must include one or more numbers."
    end

    if !has_special
      puts "ERROR. Password must include one or more special characters."
    end

    if !has_capital
      puts "ERROR. Password must include one or more capital letters."
    end

    if !has_lowercase
      puts "ERROR. Password must include one or more lowercase letters."
    end

    if !has_length
      puts "ERROR. Password must include at least 8 characters."
    end

    if !has_match
      puts "ERROR. Passwords do not match."
    end

    puts "\nPlease try again!"
    print "\nEnter password: "
    password_1 = gets.chomp
    print "Confirm password: "
    password_2 = gets.chomp
  end
end

# prints success message to user
puts "Succesful password!"
