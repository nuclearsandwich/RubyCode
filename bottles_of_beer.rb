# Starting the script, the user is asked how many bottles of beer there are on the wall:
puts "How many bottles of beer are on the wall?"

# Variable storing the user's input:
bottlesOfBeer = gets.chomp.to_i

# While there is at least 1 bottle of beer on the wall, our program goes through the song:
while bottlesOfBeer > 0
	puts bottlesOfBeer.to_s + " bottles of beer on the wall, " + bottlesOfBeer.to_s + " bottles of beer!"
	bottlesOfBeer -= 1
	puts "Take one down, pass it around, " + bottlesOfBeer.to_s + " bottles of beer on the wall!"
end

# Still needs a check for a valid input...