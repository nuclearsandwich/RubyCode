# Version 1.0

# Notes for next version:
# Consider putting a way to "exit out" of the "list-creation loop" - in case someone
	# figures out they still need to add something else
# Consider putting in a way to allow users to copy/paste in lists (in a certain)
	# format) - and allow them to add onto it

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
			
			until user_sorting_choice == "1" || user_sorting_choice == "2"
				puts "" # Blank space - easier to read, for now.
				puts "Input error: expecting either a 1 or a 2."
				puts big_ass_prompt
				user_sorting_choice = gets.chomp.to_s
			end
			if user_sorting_choice == "1"
				puts alphabetize_me
				exit 0
			elsif user_sorting_choice == "2"
				puts alphabetize_me.join(', ')
				exit 0
			end
		else
			# Anything but "yes" will have the while loop continue to re-run
		end
	end
end
