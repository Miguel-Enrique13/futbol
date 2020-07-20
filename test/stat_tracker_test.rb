require './lib/stat_tracker'
require 'minitest/autorun'
require 'minitest/pride'

class StatTrackerTest<Minitest::Test

  def test_set_up
    game_path = './data/games.csv'
    team_path = './data/teams.csv'
    game_teams_path = './data/game_teams.csv'
    locations = {
      games: game_path,
      teams: team_path,
      game_teams: game_teams_path
    }
    stat_tracker = StatTracker.from_csv(locations)

    assert_instance_of StatTracker, stat_tracker
  end

end
