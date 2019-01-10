# Author: Clay Beabout
# Updated: Jan 10, 2019

#Allow us to acces player.rb & game.rb
require_relative 'game'

puts "\n"

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

#player objects
player1 = Player.new(p1,h1)
player2 = Player.new(p2,h2)
player3 = Player.new(p3,h3)
player4 = Player.new(p4,h4)

#Game manipulation
knuckleheads = Game.new("knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play(3)
knuckleheads.print_stats

puts "\n"
