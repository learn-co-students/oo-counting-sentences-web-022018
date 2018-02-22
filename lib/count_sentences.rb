require 'pry'

class String

  def sentence?
    if self[-1] == "."
      return true
    else
      return false
    end
  end

  def question?
    if self[-1] == "?"
      return true
    else
      return false
    end
  end

  def exclamation?
    if self[-1] == "!"
      return true
    else
      return false
    end
  end

  def count_sentences
    counter = 0
    string = self.split(" ")
    string.each do |i|
      if i.question? || i.exclamation? || i.sentence?
        counter += 1
      end
    end
    counter
  end

  # binding.pry
end
