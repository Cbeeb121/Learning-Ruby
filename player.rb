# Author: Clay Beabout
# Updated: Jan 10, 2019

class Player
  attr_accessor :name
  attr_reader :health

  #overloading the comparison operator for Player score comparison
  def <=>(other)
    other.score <=> score
  end

  #overloading the comparison operator for Player health comparison
  def <=>(other)
    other.health <=> health
  end

  def score
    @health + points
  end

  def initialize(name,health=0)
    self.name = name.capitalize
    @health = health
    @found_treasures = Hash.new(0)
  end

  def found_treasure(treasure)
    @found_treasures[treasure.name] += treasure.points
    puts "#{@name} found a #{treasure.name} worth #{treasure.points} points."
    puts "#{@name}'s treasures: #{@found_treasures}"
  end

  def to_s
    "I'm #{@name} with health = #{@health} (#{status}), points = #{points}, and score = #{score}" #and a score of #{score.to_s.ljust(4,".00")}"
  end

  def blam
    @health-=10
    puts  "#{@name} got Blammed!"
  end

  def w00t
    @health+=15
    puts  "#{@name} got W00ted!"
  end

  #will return true if health > 10
  def strong?
    @health > 100
  end

  def status
    strong? ? "Strong" : "Wimpy"
  end

  def points
    @found_treasures.values.reduce(0,:+)
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
