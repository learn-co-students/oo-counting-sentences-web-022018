require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    out = 0
    i = 0
    while i < self.length
      if [".", "?", "!"].include?(self[i]) && (self[i+1] == " " || self[i+1] == nil)
        out += 1
      end
      i += 1
    end
    out
  end
  
end