require 'scoreboard'

class ScoreboardController < ApplicationController
  
  def index
    @year = GamedayUtil.convert_digit_to_string(params[:year].to_i)
    @month = GamedayUtil.convert_digit_to_string(params[:month].to_i)
    @date = GamedayUtil.convert_digit_to_string(params[:date].to_i)
    sb = Scoreboard.new
    sb.load_for_date(@year, @month, @date)
    @games = sb.games
  end
  
end
