# Author: Clay Beabout
# Updated: Jan 10, 2019

module GameTurn
require_relative 'player'
require_relative 'die'
require_relative 'treasure_trove'

  def self.take_turn(player)
    dice = Die.new
    case dice.roll
    when 1..2
      player.blam
    when 3..4
      puts "#{player.name} was skipped."
    else
      player.w00t
    end

    #Randomized treasure finding section
    treasure = TreasureTrove.random
    player.found_treasure(treasure)
    puts "#{player.name} found a #{treasure.name} worth #{treasure.points}"
  end
end
