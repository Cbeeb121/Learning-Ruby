# Author: Clay Beabout
# Date: Jan 8, 2019

class Player
  attr_accessor :name
  attr_reader :health

  def score
    @health + @name.length
  end

  def initialize(name,health=0)
    self.name = name.capitalize
    @health = health
  end

  def to_s
    "#{@name} has a health of #{@health} and a score of #{score.to_s.ljust(4,".00")}"
  end

  def blam
    @health-=10
    puts  "#{@name} got Blammed!"
  end

  def w00t
    @health+=15
    puts  "#{@name} got W00ted!"
  end
end


#if player.rb equals the currently running program
if __FILE__ == $0

  #checking to guarantee if statement works
  puts "\n[WARNING] If NOT running ruby player.rb alone, ERROR\n"

  #player name variables
  p1 = "art3mis"
  p2 = "parzival"
  p3 = "aech"
  p4 = "pacman"
  #Health variables
  h1 = 60
  h2 = 125
  h3 = 100
  h4 = 90

  player1 = Player.new(p1,h1)
  player2 = Player.new(p2,h2)
  player3 = Player.new(p3,h3)
  player4 = Player.new(p4,h4)

  puts player1
  puts player2
  puts player3
  puts player4

end
