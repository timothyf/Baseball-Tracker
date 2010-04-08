class PitchByPitchController < ApplicationController
  
  
  layout 'game'
  
  
  def index
    set_game_info   
    @rosters = @game.get_rosters
    @innings = @game.get_innings
    @tab = "pitchbypitch"
  end
    
  
end
