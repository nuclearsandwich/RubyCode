# Flow Control

# The following two lines should return false and true, respectively:
puts "First, for some greater-than, and less-than:"
puts (1 > 2).to_s + " - 1 is not greater than 2."
puts (1 < 2).to_s + " - 1 is less than 2."
puts ""

# The following two lines should return true and false, respectively:
puts "Now, for greater-than-or-equal-to, and less-than-or-equal-to:"
puts (5 >= 5).to_s + " - 5 is not greater than 5, but it is equal to it."
puts (5 <= 4).to_s + " - 5 is neither less than 4, nor equal to it."
puts ""

# Single-equals ( = ) means assignment.  But what if we want to check for equality?
# We then use double-equals ( == ) - or, if two things are not equal, with exclamation-equals ( != ) 
# The following two lines should both return true:
puts "A couple of equality checks:"
puts (1 == 1).to_s + " - 1 is equal to 1.  Who would've thought?"
puts (2 != 1).to_s + " - 2 is not equal to 1."
puts ""

# We can also compare strings...but this is where it gets a bit crazy.
# If we test 'cat' < 'dog', what will the result be?
puts 'cat' < 'dog'
# ...wait, what?! True?! HUH!?
# When strings are compared, Ruby compares them via lexicographical ordering - or, in simple terms:
# The order they appear in a dictionary - alphabetically
# But wait, there's a catch!  Capitol letters come before lower case:
puts ('ant' < 'Zoo').to_s + " - Zoo will come before ant."
# Aha...false.
puts "But ant will come before zoo:"
puts 'ant'.downcase < 'Zoo'.downcase
puts ""

# Lastly, let's try numbers as strings:
puts (2 < 10).to_s + " - 2 is less than 10."
puts "But is the string \'2\' less than the string \'10\'?  Let's see:"
puts '2' < '10'
# The string '2' is not less than the string '10' - Ruby looks at the first character.  It sees one, not ten.
# In other words, we just asked Ruby, "Hey, is 2 less-than 1?"  Ruby tells us, "False - 2 is not less than 1."