require 'box_score'
  

class BoxscoreController < ApplicationController
  
  
  layout 'game'
  
  
  # Displays the boxscore for the game specified by the gid parameter
  def index
    set_game_info
    @tab = "boxscore"
  end
  
  
end
