# Version 0.1

# This program takes user inputs, puts them into an array, alphabetizes them, then outputs
# The alphabetized array.
puts "Add some stuff to alphabetize.  When you are finished, enter a blank space."
some_array = []
run_me = 1

while run_me == 1
	some_stuff = gets.chomp.to_s
	if some_stuff != ""
		some_array.push some_stuff
	else
		puts "Here is your alphabetized list:"
		puts some_array.sort
		run_me = 0
	end
end
