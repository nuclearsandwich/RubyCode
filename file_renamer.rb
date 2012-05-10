# Version 1.0

# The program takes an input InThisKindOfFormat, and will turn it into a string in_this_kind_of_format

# The user is prompted for an input - the input is saved in a variable:
puts "Please input the file to be renamed:"
rename_me = gets.chomp

# This regular expression matches any single capital letter. The regexp
# has comments in it contained by (?# ...) these are not part of the
# regular expression and are merely explanatory. A succinct version of it
# would be
# CAPTURE_CAPITAL_REGEXP = /([A-Z])/
CAPTURE_CAPITAL_REGEXP = /
(            (?# Start a capture group with an open parentheses)
[A-Z]        (?# Match any single character ranging from A to Z)
)            (?# Close the capture group so that the character will be captured)
/x
# The trailing `x` flag on the regexp means don't count spaces as part of the
# pattern. It helps us format our comments cleanly.

def rename_method str_to_rename
  # The new filename is created by replacing each capital letter with an
  # underscore followed by the downcased letter. In order to use a regular
  # expression capture with the gsub method, we need to pass it a block.
  new_filename = str_to_rename.gsub CAPTURE_CAPITAL_REGEXP do |matched_capital|
    matched_capital.prepend("_").downcase
  end

  # The new filename above may have an underscore in the first position, such
  # as when the filename was "GuessingGame" we don't want that so we can
  # actually check if the first character is an underscore and strip it away.
  # We use #gsub! rather than #gsub since we were the ones who made this string
  # so it doesn't matter if we also do destructive work on it.
  new_filename.gsub! /^_/, ""


	puts "Is '#{new_filename}' the naming convention you were looking for?"
	if gets.chomp.downcase == "yes"
		File.rename(str_to_rename, new_filename) # Renaming the file
		puts "Alrighty - the file name is now #{new_filename}."
	else
		puts "No changes have been made."
		exit 0
	end
end

rename_method rename_me
