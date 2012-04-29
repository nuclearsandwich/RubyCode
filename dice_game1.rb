# Two dice are rolled, and their values are stored in these variables:
dice1 = rand(6) + 1
dice2 = rand(6) + 1

# Basic scoring:
score = (dice1 + dice2)

# Advanced scoring system: if the same number is rolled twice, the player's score is doubled!
if dice1 == dice2
	score *= 2
end

# Showing the score:
puts "You rolled a #{dice1} and a #{dice2} for a score of #{score}!"