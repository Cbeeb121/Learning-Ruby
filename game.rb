# Author: Clay Beabout
# Updated: Jan 9, 2019

#Finds file from same directory titled player.rb and loads it
require_relative 'player'
require_relative 'game_turn'

class Game
  attr_reader :title
  def initialize(title)
    @title = title.capitalize
    @players = []
  end

  def arr_size
    @players.size
  end

  def roll_die
    rand(1..6)
  end

  def add_player(playerX)
    #same as @players << playerX
    @players.push(playerX)
  end

  def play
    puts "There are #{@players.size} players in #{@title}."
    @players.each do |p|
      puts p
    end

    @players.each do |p|
      GameTurn.take_turn(p)
      puts p
    end

  end
end
