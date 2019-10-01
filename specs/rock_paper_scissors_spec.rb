require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../models/rock_paper_scissors.rb')

class TestRps < Minitest::Test

  def test_rock
    assert_equal("Tie", Rps.rock("rock"))
    assert_equal("Loss", Rps.rock("paper"))
    assert_equal("Win", Rps.rock("scissors"))
  end

  def test_paper
    assert_equal("Win", Rps.paper("rock"))
    assert_equal("Tie", Rps.paper("paper"))
    assert_equal("Loss", Rps.paper("scissors"))
  end

  def test_scissors
    assert_equal("Loss", Rps.scissors("rock"))
    assert_equal("Win", Rps.scissors("paper"))
    assert_equal("Tie", Rps.scissors("scissors"))
  end

end
