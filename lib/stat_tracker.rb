require 'csv'

class StatTracker
  attr_reader :games, :teams, :game_teams

  def self.from_csv(location)

    StatTracker.new(location)
  end

  def initialize(location)
    @games = location[:games]
    @teams = location[:teams]
    @game_teams = location[:game_teams]
  end

end
