# Inverted guessing game - the computer generates a number, and determines
# whether the user needs to chose bigger or smaller

#!env ruby

computers_choice = rand(100) + 1
remaining_guesses = 6

puts "I chose a random integer between 1 and 100.  Take a guess as to what it is."

while remaining_guesses >= 1
	remaining_guesses -= 1

	# The user inputs a number
	user_response = gets.chomp.to_i

	# Checks to see if the input is an appropriate integer -
	# If not, requests an appropriate integer
	if user_response <= 0 or user_response > 100
		puts "Please enter an integer - as a digit - between 1 and 100."
		remaining_guesses += 1
	else
		# The computer tells the user whether the number is lower, higher, or spot-on
		if user_response > computers_choice
			puts "The number you are looking for is smaller than #{user_response}..."
		elsif user_response < computers_choice
			puts "The number you are looking for is bigger than #{user_response}..."
		else user_response == computers_choice
			puts "You got it!  The number is #{computers_choice}!"
			exit 0
		end
	end
end

# The computer whoops the user's butt
puts "The number was #{computers_choice} - better luck next time!"