# Version 0.3
# The program so far - takes an input InThisKindOfFormat, and will turn it into a string in_this_kind_of_format
# It does not yet change any file names...but that is the ultimate goal.

# First, we ask the user to input the name of the file to be renamed,
# and store it in a variable:
puts "Please input the file to be renamed:"
rename_me = gets.chomp.to_s

def rename_method str_to_rename
	# variable x, indexing for the file name:
	x = 0
	# variable storing the file name:
	file_name_prog = ""

	def has_uppercase_letters this_capital
		(this_capital =~ /[A-Z]/) != nil
	end

	while x < str_to_rename.length
		if x == 0
			file_name_prog += str_to_rename[x]
		elsif has_uppercase_letters(str_to_rename[x]) == true
			file_name_prog += str_to_rename[x].gsub(/([A-Z])/, ('_' + str_to_rename[x]))
		else
			file_name_prog += str_to_rename[x]
		end
		x += 1
	end		

	file_name_prog.downcase!

	puts "Is '#{file_name_prog}' the naming convention you were looking for?"
	if gets.chomp.downcase == "yes"
		puts "Alrighty - the file name is now #{file_name_prog}."
	else
		puts "No changes have been made."
		exit 0
	end
end

# This works
#  |    |
#  |    |
#  V    V
File.rename(rename_me, (rename_method rename_me).to_s)
#             ^    ^        ^            ^        ^
#             |    |        |            |        |
#             |    |        |            |        |
#             |    |        |            |        |
# This much works too.      |            |        |
#                           |            |        |
#                           |            |        |
#                Something here, though, is not working...
