class HighlightsController < ApplicationController
  
  layout 'game'
  
  
  def index
    set_game_info
    @media = @game.get_media
    @tab = "highlights"
  end
  
  
end
