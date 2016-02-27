require "spec_helper"
require "my_reverse"
describe String do
	it "can reverse 'qwer'" do
		str = "qwer"
		str.my_reverse.should == str.reverse
	end
end
