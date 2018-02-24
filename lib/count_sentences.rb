class String
  
  def sentence?
    end_with?(".") ? true : false
  end
  
  def question?
    end_with?("?") ? true : false
  end
  
  def exclamation?
    end_with?("!") ? true : false
  end
  
  def count_sentences
    self.split(/[.?!]/).reject do |x| x.empty? end.length
  end
  
end