module GameTurn
require_relative 'player'
require_relative 'die'

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
  end
end