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
    treasures = TreasureTrove::TREASURES
    rand_treas = treasures.sample
    puts "#{player.name} found a #{rand_treas.name} worth #{rand_treas.points}"
  end
end
