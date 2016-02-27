class Array
  def my_inject (result = nil, &block)
    if block_given?
      if result == nil
        result = self.first
        self[1,self.length-1].each { |e| result = block.call(result, e) }
      else
        self.each { |e| result = block.call(result, e) }
      end
    end
    return result
  end
end
