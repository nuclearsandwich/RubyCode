# A program that:
# First takes a string with ThisKindOfCasing, and turns it into a string with this_kind_of_casing:

# First, we have ask the user to input the name of the file to be renamed,
# and store it in a variable:
puts "Please input the file to be renamed:"
rename_me = gets.chomp.to_s

# The rename method:
def rename_method rename_me
	rename_progress = rename_me

	# First we need to have the code insert an underscore ( _ ) before each capital letter,
	# EXCEPT for the first one (if the file name starts with a capital letter):
	<code goes here>
	
	# Next, we need to downcase the entire thing:
	rename_progress.downcase

	# Lastly, we prompt the user as to if the result is what they want:
	puts "Is #{rename_progress} the naming convention you were looking for?"
	if gets.chomp.downcase == "yes"
		# rename the file
		<code goes here>
	else
		puts "No changes have been made."
		exit 0
end