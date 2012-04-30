# A program that:
# First takes a string with ThisKindOfCasing, and turns it into a string with this_kind_of_casing:

# First, we ask the user to input the name of the file to be renamed,
# and store it in a variable:
puts "Please input the file to be renamed:"
rename_me = gets.chomp.to_s

# Will probably want to add a check, later, to see if there is such a file
# (maybe it doesn't exist - due to user typo)

# The rename method:
def rename_method str_to_rename
	# rename_progress is the variable storing the progress of the string as the program goes on:
	rename_progress = str_to_rename

	# Define the method that finds if there is a capital letter in the input:
	def has_uppercase_letters this_capital
		(this_capital =~ /[A-Z]/) != nil
	end

	# Step 1, if the file name starts with a capital letter, we DON'T want an underscore preceding it.
	# So we downcase the first letter:
	if has_uppercase_letters(rename_progress[0]) == true
		rename_progress = rename_progress[0].chr.downcase + rename_progress[1..-1]
	else
	end

	# Step 2, we need to insert an underscore ( _ ) before each capital letter,
	# Step 2a: for each character in the string, we need to check and see if it a capital letter...
	#<code goes here>
	# Step 2b: ...if the letter is capital, we put an underscore in front of it...
	#<code goes here>










	# Step 3, with the underscores in place, we can safely downcase the whole thing:
	#rename_progress = rename_progress.downcase

	# Step 4, we prompt the user as to if the result is what they want:
	puts "Is '#{rename_progress}' the naming convention you were looking for?"
	if gets.chomp.downcase == "yes"
		# rename the file
		puts "Alrighty - the file name is now #{rename_progress}."
	else
		puts "No changes have been made."
		exit 0
	end
end

rename_method rename_me