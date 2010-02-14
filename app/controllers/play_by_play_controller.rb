class PlayByPlayController < ApplicationController

	def index
    @bs = BoxScore.new
    @bs.load_from_id(params[:gid])
		@gameday_info = GamedayUtil.parse_gameday_id('gid_' + params[:gid]) 
		@gid = params[:gid]
		
		@eventlog = EventLog.new
		@eventlog.load_from_id(params[:gid])
		
	    # fetch all game linescores to display on the boxscore page
	    sb = Scoreboard.new
	    sb.load_for_date(@gameday_info['year'], @gameday_info['month'], @gameday_info['day'])
	    @games = sb.games
    end
end
