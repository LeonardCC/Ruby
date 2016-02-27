class Array
  def my_map()
    if block_given?
      result_array = []
      self.each{|e| result_array << yield(e)}
      return result_array
    else
      return self
    end
  end
end
