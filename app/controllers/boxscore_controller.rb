require 'box_score'
  

class BoxscoreController < ApplicationController
  
  
  def index
    @bs = BoxScore.new
    @bs.load_from_id(params[:gid])
    @gameday_info = GamedayUtil.parse_gameday_id('gid_' + params[:gid])
    @cities = @bs.get_cities
    @innings = @bs.get_innings      
    @tots =  @bs.get_linescore_totals
    @home_pitchers = @bs.get_pitchers('home')
    @away_pitchers = @bs.get_pitchers('away')
    @home_batters = @bs.get_batters('home')
    @away_batters = @bs.get_batters('away')
    @home_batters_text = @bs.home_batting_text
    @away_batters_text = @bs.away_batting_text
    @game_info = @bs.get_game_info
  end
  
  
end
