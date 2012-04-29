# A program that:
# First takes a string with ThisKindOfCasing, and turns it into a string with this_kind_of_casing:
CaseTransformer = Object.new
def CaseTransformer.underscore str
	str
end

describe CaseTransformer do
	it "underscores a string that doesn't already include underscores"
	it do
		CaseTransformer.underscore("chicken_and_waffles").should == "chicken_and_waffles"
	end
end
