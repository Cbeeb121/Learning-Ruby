# Author: Clay Beabout
# Updated: Jan 10, 2019

require_relative 'game'
require_relative 'player'
require_relative 'die'

describe Game do

  before do
    @game = Game.new("knuckleheads")
    @initial_health = 100
    @player = Player.new("Larry", @initial_health)
    @game.add_player(@player)
  end

  it "w00ts the player if a high number is rolled" do
    Die.any_instance.stub(:roll).and_return(5)
    @game.play(2)
    @player.health.should == @initial_health + (15*2)

  end

  it "changes nothing if a medium number is rolled" do
    Die.any_instance.stub(:roll).and_return(3)
    @game.play(2)
    @player.health.should == @initial_health
  end

  it "blams the player if a low number is rolled" do
    Die.any_instance.stub(:roll).and_return(1)
    @game.play(2)
    @player.health.should == @initial_health - (10*2)
  end

  it "assigns a treasure for points during a player's turn" do
    game = Game.new("Knuckleheads")
    player = Player.new("moe")
    game.add_player(player)
    game.play(1)
    player.points.should_not be_zero
    # or use alternate expectation syntax:
    # expect(player.points).not_to be_zero
  end


end
