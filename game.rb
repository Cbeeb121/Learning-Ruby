# Author: Clay Beabout
# Date: Jan 8, 2019

#Finds file from same directory titled player.rb and loads it
require_relative 'player'

class Game
  attr_reader :title
  def initialize(title)
    @title = title.capitalize
    @g_arr = []
  end

  def arr_size
    @g_arr.size
  end

  def add_player(playerX)
    @g_arr.push(playerX)
  end

  def play
    puts "There are #{@g_arr.size} players in the game."
    @g_arr.each do |p|
      puts p
    end
    @g_arr.each do |p|
      p.blam
      p.w00t
      p.blam
      puts p
    end
  end
end
