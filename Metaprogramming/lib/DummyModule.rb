module DummyModule

  def instance_method_from_module
    puts "called instance_method_from_module"
  end

  module ClassMethods
    def class_method_from_module
      puts "called class_method_from_module"
    end

    def self.included(base)
      base.extend(ClassMethods)
    end
  end
end

class DummyClass
  include DummyModule
end

DummyClass.class_method_from_module
dummy_object = DummyClass.new
dummy_object.instance_method_from_module
