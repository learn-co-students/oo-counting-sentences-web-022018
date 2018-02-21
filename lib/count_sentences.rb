require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    thing = self
    array = self.split(".")
    array = array.map {|string| string.split("?")}.flatten
    array = array.map {|string| string.split("!")}.flatten
    array.delete("")
    array.count
  end
end
