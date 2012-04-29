# use ** to exponentiate (ie, 5 ** 2   is 5 to the power of 2)
# the following should result in 25, 16 and 27, respectively
puts "First, some exponentiation:"
puts "5 to the power of 2 is: " + (5 ** 2).to_s
puts "4 to the power of 2 is: " + (4 ** 2).to_s
puts "3 to the power of 3 is: " + (3 ** 3).to_s
puts ""

# likewise, you can use floats in exponents, such as finding square roots
# the following should result in 5, 3 and 2 (really, 2.23606797749979), respectively
puts "Now to find some square roots:"
puts "The square root of 25 is: " + ((25 ** 0.5).to_i).to_s
puts "The square root of 9 is: " + ((9 ** 0.5).to_i).to_s
puts "The square root of 5 is: " + ((5 ** 0.5).to_i).to_s
puts ""

# modulus ( % ) gives the remainder after division
# the following should result in 1, 1 and 3,respectively
puts "And now, for some modulus:"
puts "3 % 2 has a remainder of: " + (3 % 2).to_s
puts "5 % 2 has a remainder of: " + (5 % 2).to_s
puts "15 % 4 has a remainder of: " + (15 % 4).to_s
puts ""

# the abs, or absolute, method will return the absoulte value of the number
# the following should both return 3
puts "abs returns the absolute value of a number:"
puts "5 minus 2, absolute, is: " + (5 - 2).abs.to_s
puts "2 minus 5, absolute, is: " + (2 - 5).abs.to_s
puts ""

# the rand function will create a random number.  On it's own, it will return a float
# greater-than-or-equal-to 0.0, and less than 1.0
puts "Now to play with some random numbers:"
puts rand
# by giving rand a parameter, it will give an integer greater-than-or-equal-to 0, and less than the parameter
# giving us 5 possible numbers, from 0-4
puts "rand(5) will give us a number >= 0, but < 5: " + (rand(5)).to_s
# rand(1) will always return 0:
puts rand(1)
# what if we wanted a range of numbers, from 1 to 100 - not including 0?  We can use math to do so:
# rand(100) will always create the range 0-99, but +1 will ensure that we get 1-100 (0 will become 1, 
# and 99 will become 100)
puts rand(100) + 1
puts ""

# we can use srand to generate a seed for the random fucntion - this will return the same random numbers
# in the same sequence on two different runs!
puts "We can use srand to create seeds for rand:"
puts "For this, we'll use the seed 1442 - so srand 1442 will get us..."
srand 1442
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts "And by re-inputting the srand again, here..."
srand 1442
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts (rand(100))
puts ""

puts "Now to play with Math a little bit:"
puts "Who would like some PI?"
puts (Math::PI)
# ???
puts (Math::E)
puts "We can use .cos to find cosines - in this one, we find the cosine of pi / 3:"
puts (Math.cos(Math::PI / 3))
puts "We can also find tangents with .tan - here, we find the tangent of pi / 4:"
puts (Math.tan(Math::PI / 4))
# ???
puts (Math.log(Math::E ** 2))
puts "Lastly, we find the square root of 5, add 1 to it, then divide that result by 2:"
puts ((1 + Math.sqrt(5)) / 2)