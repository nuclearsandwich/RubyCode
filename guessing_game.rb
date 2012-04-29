#!env ruby

# Create a guesing game, where the program "guesses" a random number between 1 and 100 that the user specifies
# We then tell the computer if the number is higher or lower than its guesses

max = 100
min = 1
remaining_guesses = 6

while remaining_guesses > 1
	remaining_guesses -= 1
	guess = (min + max) / 2
	puts "I will guess the number #{guess}."
	puts "Did I get the right number?  Or should my next guess bigger or smaller?"

	# If the guess is too big, the user should type smaller - or bigger, if it is too small
	user_response = gets.chomp

	# The computer uses the response to guess its next number
	if user_response == "smaller"
		puts "The number you are looking for is smaller than your guess."
		max = guess
	elsif user_response == "bigger"
		puts "The number you are looking for is bigger than your guess."
		min = guess
	else
		puts "Bwahahahahaa, I win!"
		exit 0
	end
end

# The computer concedes defeat
puts "Blast - I ran out of guesses.  Nicely done!"