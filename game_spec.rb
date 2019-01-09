# Author: Clay Beabout
# Updated: Jan 8, 2019

require_relative 'game'

describe Game do

  before do
    @game = Game.new("knuckleheads")
    @initial_health = 100
    @player = Player.new("Larry", @initial_health)
    @game.add_player(@player)
  end

  it "w00ts the player if a high number is rolled" do
    Die.any_instance.stub(:roll).and_return(5)
    @game.play
    @player.health.should == @initial_health + 15
  end

  it "changes nothing if a medium number is rolled" do
    Die.any_instance.stub(:roll).and_return(3)
    @game.play
    @player.health.should == @initial_health
  end

  it "blams the player if a low number is rolled" do
    Die.any_instance.stub(:roll).and_return(1)
    @game.play
    @player.health.should == @initial_health - 10
  end

end
