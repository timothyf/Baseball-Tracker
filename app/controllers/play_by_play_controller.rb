class PlayByPlayController < ApplicationController

  layout 'game'
  
  
	def index
    set_game_info  
		@eventlog = EventLog.new
		@eventlog.load_from_id(params[:gid])
    @tab = "playbyplay"
  end
  
  
end
