# Version 0.4

# Notes for next version:
# Maybe make a while loop out of alphabetize 1/2 choice?  If gets != 1 or 2, ask again (until
	# a proper input is given)?

# This program takes user inputs, puts them into an array,
# alphabetizes them, then outputs the alphabetized array.
puts "Add some stuff to alphabetize.  When you are finished, enter a blank space."
alphabetize_me = []
big_ass_prompt = "How would you like your list?\n1: On individual lines?\n...or...\n2: All one one line, separated by commas?"
run_me = 1

while run_me == 1
	user_input = gets.chomp.to_s
	if user_input != ""
		alphabetize_me.push user_input
	else
		puts "Is that all?"
		if gets.chomp.to_s.downcase == "yes"
			alphabetize_me.sort!
			
			puts "All done alphabetizing."
			puts big_ass_prompt
			user_sorting_choice = gets.chomp.to_s
			
			# Thinking this should be changed from an if-statement, to a while-loop - 
			# otherwise, if the user inputs anything but a 1 or 2, it will exit back
			# into the while loop, thinking the user wants to put something else into
			# the array.
			if user_sorting_choice == "1" or user_sorting_choice == "2"
				# option 1 currently not working
				# outputs as if 2 was chosen
				if user_sorting_choice == 1
					puts alphabetize_me
					exit 0
				# Nicely enough, however, this one now properly works
				# (don't have to put in 2 twice)
				else
					puts alphabetize_me.join(', ')
					exit 0
				end
			else
				puts "Input error: expecting either a 1 or a 2."
				puts big_ass_prompt
			end
		else
			# Anything but "yes" will have the while loop continue to re-run
		end
	end
end
