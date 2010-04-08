class CalendarController < ApplicationController
  
  def index
    
  end
  
  
  def today
    date = Time.now
    # redirect to scoreboard passing today's date as params
    redirect_to({:controller=>'Scoreboard', :action => "index", :year=>date.year, :month=>date.month, :date=>date.day})
  end
  
  
  def prev_day
    year = GamedayUtil.convert_digit_to_string(params[:year].to_i)
    month = GamedayUtil.convert_digit_to_string(params[:month].to_i)
    date = GamedayUtil.convert_digit_to_string(params[:date].to_i)
    dt = Time.local(year, month, date)
    dt -= 86400 # adds 1 day (specified in seconds)
    redirect_to :controller=>'scoreboard', :action=>'index', :year=>dt.year, :month=>dt.month, :date=>dt.day
  end
  
  
  def next_day
    year = GamedayUtil.convert_digit_to_string(params[:year].to_i)
    month = GamedayUtil.convert_digit_to_string(params[:month].to_i)
    date = GamedayUtil.convert_digit_to_string(params[:date].to_i)
    dt = Time.local(year, month, date)
    dt += 86400 # adds 1 day (specified in seconds)
    redirect_to :controller=>'scoreboard', :action=>'index', :year=>dt.year, :month=>dt.month, :date=>dt.day
  end
  
end
