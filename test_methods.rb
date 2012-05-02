# Starting off simple - a method that says "moooo..."
def say_moo
	puts "moooo..."
end
say_moo
puts ""

# Changing it up a bit...
def say_moo number_of_moos
	puts "moooo..." * number_of_moos
end
say_moo(5)
puts ""

# Note that we can change method defenitions like this.  However, if we were
# to try say_moo again, we'd get an error - because the method defention has
# been changed to expect a condition/parameter (in this case, number_of_moos)

# Now to try something new...
def double_this num
	num_times_2 = (num * 2).to_s
	puts num.to_s + " doubled is " + num_times_2
end
double_this 22
puts ""

# You'll notice that we have an addional variable (num_times_2) INSIDE the method.
# This type of variable is special - it is considered a Local Variable.  That is,
# it exists, locally, within something (in this case, a method) - it still functions
# as a variable should.  However, trying to access it outside the method (or "globally"),
# will get us an error...
# num_times_2

# Regarding how methods can take global variables and use them LOCALLY, without
# changing them GLOBALLY...
def slice_in_half some_number
	some_number /= 2
	puts "Scha-wiiing, I cut your global variable in half! See:"
	puts some_number
end
some_number = 12
slice_in_half some_number
puts "But out here, globally, it's still the same:"
puts some_number