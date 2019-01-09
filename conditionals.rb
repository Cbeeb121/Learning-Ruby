require_relative 'player'

player = Player.new("Larry",10)


if player.health >= 10
  puts "full health"
else
  puts "homie maimed"
end
