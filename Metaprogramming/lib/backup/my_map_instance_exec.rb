class Array
  def my_map(&format)
    result_array = []
    self.each{|e| result_array << instance_exec(e,&format)}
    return result_array
  end
end
