# objects in arrays are numbered from index 0:
names = ["Bob", "Joe", "Waffles!"]
puts "First, we should see Bob:"
puts names[0]
puts "Now we should se Joe:"
puts names[1]
puts "Lastly, who wants some Waffles?"
puts names[2]
puts ""
puts "If we ask for something that doesn't exist (ie, out of range), we should get nothing:"
puts names[3]
puts ""

# we can create a variable that is an empty array...
types_of_waffles = []
# ...and then populate it:
types_of_waffles[2] = "White-chocolate-chip and blueberry"
types_of_waffles[0] = "Whole-wheat and banana"
types_of_waffles[1] = "Buttermilk"
puts types_of_waffles
puts ""
# we can also change them...
types_of_waffles[1] = "Sardine and horse radish"
puts types_of_waffles
puts ""

# Regarding the usage of the Method, "Each":
fruits = ["bananas", "strawberries", "mangos"]
fruits.each do |fruit|
	puts "I sure to love to eat " + fruit + "."
end
# This essentially goes through the array, doing somthing to *each* something *in* the array
puts ""

# let's look at .to_s and .join
veggies = ["Broccoli", "Carrots", "Bell Peppers"]
# this first one should list each object on an individual line:
puts veggies
# this one should appear as an array
puts veggies.to_s
# does not put out an array, as in the second case (above), but instead lists the contents, and separates
# them with commas.  Also, they are all on the same line, together, instead of each having their own
# line (see first case, above)
puts veggies.join(', ')
# Note that the above one does not add a comma after the last item in the array - the last item is not
# considered.  If you want to add something after the final item in the array:
puts veggies.join(' :) ') + ' 8)'
puts ""

# Now to look at .push, .pop and .last
# push and pop are opposites, as + and - are opposites
# push adds an object to the end of the array:
puts veggies.to_s
veggies.push "Onions"
puts veggies.to_s
puts ""
# pop removes the last object from the array:
puts veggies.to_s
veggies.pop
puts veggies.to_s
puts ""
# and finally, last does not affect the array - it just tells us what is the last item in the array
puts veggies.last
veggies.push "Onions"
puts veggies.last
puts ""