require("minitest/autorun")
require("minitest/rg")
require_relative("../models/rps.rb")

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new("rock", "scissors")
    @game2 = Game.new("scissors", "rock")
    @game3 = Game.new("scissors", "paper")
    @game4 = Game.new("paper", "scissors")
    @game5 = Game.new("paper", "rock")
    @game6 = Game.new("rock", "paper")
    @game7 = Game.new("paper", "paper")
    @game8 = Game.new("rock", "rock")
    @game9 = Game.new("scissors", "scissors")
  end


def test_rock_scissors
  result = @game1.check_winner()
  assert_equal("rock wins for player 1", result)
end

def test_scissors_rock
  result = @game2.check_winner()
  assert_equal("rock wins for player 2", result)
end

def test_scissors_paper
  result = @game3.check_winner()
  assert_equal("scissors win for player 1", result)
end

def test_paper_scissors
  result = @game4.check_winner()
  assert_equal("scissors win for player 2", result)
end

def test_paper_rock
  result = @game5.check_winner()
  assert_equal("paper wins for player 1", result)
end

def test_rock_paper
  result = @game6.check_winner()
  assert_equal("paper wins for player 2", result)
end

def test_paper_paper
  result = @game7.check_winner()
  assert_equal("a draw", result)
end

def test_rock_rock
  result = @game8.check_winner()
  assert_equal("a draw", result)
end

def test_scissors_scissors
  result = @game9.check_winner()
  assert_equal("a draw", result)
end

# assert_equal("paper wins", Game.rock_paper_scissors("rock", "paper"))
# assert_equal("rock wins", Game.rock_paper_scissors("rock", "scissors"))
# assert_equal("scissors win", Game.rock_paper_scissors("paper", "scissors"))
# assert_equal("draw", Game.rock_paper_scissors("paper", "paper"))
# end



end
