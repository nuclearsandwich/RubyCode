# Version 0.2
# The program so far - takes an input InThisKindOfFormat, and will turn it into a string in_this_kind_of_format
# It does not yet change any file names...but that is the ultimate goal.

# First, we ask the user to input the name of the file to be renamed,
# and store it in a variable:
puts "Please input the file to be renamed:"
rename_me = gets.chomp.to_s

# Will probably want to add a check, later, to see if there is such a file
# (maybe it doesn't exist - due to user typo)

def rename_method str_to_rename
	# variable x, indexing for the while loop
	x = 0
	# rename_progress is the variable storing the progress of the string as the program goes on:
	rename_progress = ""

	# The method that finds if there is a capital letter in the input:
	def has_uppercase_letters this_capital
		(this_capital =~ /[A-Z]/) != nil
	end

	while x < str_to_rename.length
		# Step 1, if the file name starts with a capital letter, we DON'T want an underscore preceding it.
		if x == 0
			# So we skip over it, but add it to our progress.
			rename_progress += str_to_rename[x]
		# Step 2a, for each character in the string (after the first), we need to check and see if it a capital letter... 
		elsif has_uppercase_letters(str_to_rename[x]) == true
			# We insert an underscore ( _ ) before each capital letter...
			# ...with .gsub, then include the current indexed character...
			# ...and add that to our progress.
			rename_progress += str_to_rename[x].gsub(/([A-Z])/, ('_' + str_to_rename[x]))
		# Step 2b, we still add in each lower-case character, or number, to the rename_progress...
		else
			rename_progress += str_to_rename[x]
		end
		# Incrementing the index for the while loop
		x += 1
	end

	# Step 3, with the underscores in place, we can safely downcase the whole thing:
	rename_progress = rename_progress.downcase

	# Step 4, we prompt the user as to if the result is what they want:
	puts "Is '#{rename_progress}' the naming convention you were looking for?"
	if gets.chomp.downcase == "yes"
		puts "Alrighty - the file name is now #{rename_progress}."
	else
		puts "No changes have been made."
		exit 0
	end
end

rename_method rename_me