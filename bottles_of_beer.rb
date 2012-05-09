bottlesOfBeer = 0

until bottlesOfBeer > 0 && bottlesOfBeer < 101
	puts "How many bottles of beer are on the wall? I can go from 1 to 100."
	bottlesOfBeer = gets.chomp.to_i
	if bottlesOfBeer <= 0
		puts "I can't sing if there are no bottles of beer on the wall, now can I?"
	else
		puts "Woah, that's way too many.  Keep it at or below 100."
	end
end

while bottlesOfBeer > 0
	puts bottlesOfBeer.to_s + " bottles of beer on the wall, " + bottlesOfBeer.to_s + " bottles of beer!"
	bottlesOfBeer -= 1
	puts "Take one down, pass it around, " + bottlesOfBeer.to_s + " bottles of beer on the wall!"
end
