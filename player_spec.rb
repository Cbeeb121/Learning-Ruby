require_relative 'player'
require 'rspec' #guarantees use of rspec methods

describe Player do

  #removes method outputs from console
  before do
    $stdout = StringIO.new
  end

  #initialize instance variables for the file
  before do
    @initial_health = 150
    @player = Player.new("larry",@initial_health)
  end

  #has a capitalized name
  it "has a capitalized name" do
    @player.name.should == "Larry"
  end

  #has an initial health
  it "has an initial health" do
    @player.health.should == 150
  end

  #has a string representation
  it "has a string representation" do
    @player.to_s.should == "Larry has a health of 150"
  end

  #computes a score as the sum of its health and length of name
  it "computes a score as the sum of its health and length of name" do
    @player.score.should == 155
  end

  #increases health by 15 when w00ted
  it "increases health by 15 when w00ted" do
    @player.w00t
    @player.health.should == 165
  end

  #decreases health by 10 when blammed
  it "decreases health by 10 when blammed" do
    @player.blam
    @player.health.should == 140
  end

end
