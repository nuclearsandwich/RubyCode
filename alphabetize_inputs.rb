# Version 0.2

# This program takes user inputs, puts them into an array,
# alphabetizes them, then outputs the alphabetized array.
puts "Add some stuff to alphabetize.  When you are finished, enter a blank space."
alphabetize_me = []
run_me = 1

while run_me == 1
	user_input = gets.chomp.to_s
	if user_input != ""
		alphabetize_me.push user_input
	else
		puts "Is that all?"
		if gets.chomp.to_s.downcase == "yes"
			alphabetize_me.sort!
			
			puts "All done alphabetizing.  How would you like your list?" 
			puts "1: on individual lines?"
			puts "...or..."
			puts "2: all on one line, separated by commas?"
			
			if gets.chomp.to_s == "1"
				puts alphabetize_me
				run_me = 0
			# Something funky is going on, here...putting in 2 once doesn't puts the list,
			# but doing it a second time does...
			elsif gets.chomp.to_s == "2"
				puts alphabetize_me.join(', ')
				run_me = 0
			else
				# Also a problem here.  Not returning a 1 or 2 will cause the program to
				# have a giant brainfart and stop running.
			end
			run_me = 0
		else
			# Anything but "yes" will have the while loop continue to re-run
		end
	end
end
