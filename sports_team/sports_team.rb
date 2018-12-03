class SportsTeam

attr_accessor :team_name, :players, :coach, :points

def
  initialize(team_name, players, coach)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = 0
end

def add_player(name)
  @players.push << (name)
end

def add_points
  @points += 1
  return @points
end

def player_present
  @players.include?(name)
end

# def team_name
#   return @team_name
# end
#
# def coach
#   return @coach
# end
#
# def players
#   return @players
# end
#
# def update_coach(name)
#   @coach = name
# end

end
