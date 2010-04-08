# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '60c305f29923453786f4952650fa9142'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  
  def set_game_info
    @bs = BoxScore.new
    @bs.load_from_id(params[:gid])
    @gameday_info = GamedayUtil.parse_gameday_id('gid_' + params[:gid]) 
    @gid = params[:gid] 
    @game = @bs.game
    
    # fetch all game linescores to display on the boxscore page
    sb = Scoreboard.new
    sb.load_for_date(@gameday_info['year'], @gameday_info['month'], @gameday_info['day'])
    @games = sb.games
  end
  
  
end
