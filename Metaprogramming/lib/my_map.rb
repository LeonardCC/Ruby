class Array
  def my_map(&block)
    if block_given?
      result_array = []
      self.each{|e| result_array << block.call(e)}
      return result_array
    else
      return self
    end
  end
end
