class String
  def my_reverse
    result = ""
    self.split(//).reverse_each { |letter| result += letter }
    return result
  end
end
