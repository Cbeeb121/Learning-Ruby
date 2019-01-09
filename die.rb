# Author: Clay Beabout
# Updated: Jan 9, 2019

#Merely to roll a random die
class Die
attr_reader :number

  def initialize
    roll
  end

  def roll
    @number = rand(1..6)
  end
end
