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

  def play(rounds)
    puts "There are #{@players.size} players in #{@title}."
    @players.each do |p|
      puts p
    end

    #SHOULD BE |rounds|
    1.upto(rounds) do |round|
      puts "\nRound #{round}:"
      @players.each do |p|
        GameTurn.take_turn(p)
        puts p
      end
    end
  end
  #end of play

  def print_name_and_health(player)
    puts "#{player.name} (#{player.health})"
  end

  def print_stats
      puts "\n#{@title} Statistics:\n\n"
      strong_players, wimpy_players = @players.partition { |p| p.strong? }

      puts "#{strong_players.size}) strong players"
      strong_players.each do |p|
        print_name_and_health(p)
      end

      puts "\n#{wimpy_players.size}) wimpy players"
      wimpy_players.each do |p|
        print_name_and_health(p)
      end

      sorted_players = @players.sort { |a , b| b.score <=> a.score }
      puts "\nKnuckleheads high scores:\n"
      @players.sort.each do |p|
        formatted_name = p.name.ljust(20, '.')
        puts "#{formatted_name} #{p.score}"
      end
  end


end
