require "spec_helper"
require "my_inject"
describe Array do

  it ".my_inject equals sum of [1,2,3,4] no initial" do
    arr = [1,2,3,4]
    arr.my_inject { |sum, n| sum + n }.should == arr.inject { |sum, n| sum + n }
  end

  it ".my_inject equals sum of [1,2,3,4] initial 5" do
    arr = [1,2,3,4]
    arr.my_inject(5) { |sum, n| sum + n }.should == arr.inject(5) { |sum, n| sum + n }
  end

  it ".my_inject equals product of [1,2,3,4] no initial" do
    arr = [1,2,3,4]
    arr.my_inject { |prod, n| prod * n }.should == arr.inject { |prod, n| prod * n }
  end

  it ".my_inject equals product of [1,2,3,4] initial 0" do
    arr = [1,2,3,4]
    arr.my_inject(0) { |prod, n| prod * n }.should == arr.inject(0) { |prod, n| prod * n }
  end

  it ".my_inject equals product of [1,2,3,4] initial 5" do
    arr = [1,2,3,4]
    arr.my_inject(5) { |prod, n| prod * n }.should == arr.inject(5) { |prod, n| prod * n }
  end

end
