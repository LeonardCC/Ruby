require "spec_helper"
require "my_map"
describe Array do

  it ".my_map returns array [1,2,3]" do
    arr = [1,2,3]
    arr.my_map { |e| e }.should == [1,2,3]
  end

  it ".my_map equals mapped [1,2,3] as e" do
    arr = [1,2,3]
    arr.my_map { |e| e }.should == arr.map { |e| e }
  end

  it ".my_map equals mapped [1,2,3] as _e_" do
    arr = [1,2,3]
    arr.my_map { |e| "_#{e}_" }.should == arr.map { |e| "_#{e}_" }
  end

end
