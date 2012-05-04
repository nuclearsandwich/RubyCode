# A program that:
# First takes a string with ThisKindOfCasing, and turns it into a string with this_kind_of_casing:
CaseTransformer = Object.new

def CaseTransformer.underscore(str)
	x = 0
	renamed_str = ""

	if (str =~ /[A-Z]/) == nil
		str
	else
		while x < str.length
			if x == 0
				renamed_str += str[x]
			elsif (str[x] =~ /[A-Z]/) != nil
				renamed_str += str[x].gsub(/([A-Z])/, ('_' + str[x]))
			else
				renamed_str += str[x]
			end
			x += 1
		end
		#renamed_str
		# Uncomment the above, and comment out the below, if you swap Part 3 for Part 2 (below).
		renamed_str.downcase!
	end
end

describe CaseTransformer do
	# Part 1
	it "passes through strings which have no capitals, but does not change them" do
		CaseTransformer.underscore("chickenandwaffles").should == "chickenandwaffles"
	end
	
	# Part 2
#	it "underscores a string that doesn't already include underscores" do
#		CaseTransformer.underscore("ChickenAndWaffles").should == "Chicken_And_Waffles"
#	end

	# Part 3
	it "does Part 2, above, and downcases the result" do
		CaseTransformer.underscore("ChickenAndWaffles").should == "chicken_and_waffles"
	end
end
