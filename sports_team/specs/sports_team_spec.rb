require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test

def setup
@sports_team = SportsTeam.new("TeamGB", players=["John", "James"], "Jennifer")
end

def test_team_name
  assert_equal("TeamGB", @sports_team.team_name)
end

def test_return_coach
  assert_equal("Jennifer", @sports_team.coach)
end

def test_return_players
  assert_equal(["John", "James"], @sports_team.players)
end

def test_update_coach_name
  @sports_team.coach = ("Keith")
  assert_equal("Keith", @sports_team.coach)
end

def test_add_player
  @sports_team.players << "Colin"
  assert_equal(["John", "James", "Colin"], @sports_team.players)
end

def test_add_points
  @sports_team.add_points
  assert_equal(1, @sports_team.points)
end

def test_player_present
  @players = ("James")
  assert_equal((["John", "James"]), @sports_team.players)
end

def test_player_present__false
  @player = ("Jack")
  assert_equal((["John", "James"]), @sports_team.players)
end

end
