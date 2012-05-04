# Version 1.0

# The program takes an input InThisKindOfFormat, and will turn it into a string in_this_kind_of_format

# The user is prompted for an input - the input is saved in a variable:
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
		File.rename(str_to_rename, file_name_prog) # Renaming the file
		puts "Alrighty - the file name is now #{file_name_prog}."
	else
		puts "No changes have been made."
		exit 0
	end
end

rename_method rename_me
