class CalendarController < ApplicationController
  
  def index
    
  end
  
  
  def today
    date = Time.now
    # redirect to scoreboard passing today's date as params
    redirect_to({:controller=>'Scoreboard', :action => "index", :year=>date.year, :month=>date.month, :date=>date.day})
  end
  
  
  def prev_day
    @year = GamedayUtil.convert_digit_to_string(params[:year].to_i)
    @month = GamedayUtil.convert_digit_to_string(params[:month].to_i)
    @date = GamedayUtil.convert_digit_to_string(params[:date].to_i)
    current_date = Time.local(@year, @month, @date)
    # redirect to scoreboard passing prev day as params
  end
  
  
  def next_day
    @year = GamedayUtil.convert_digit_to_string(params[:year].to_i)
    @month = GamedayUtil.convert_digit_to_string(params[:month].to_i)
    @date = GamedayUtil.convert_digit_to_string(params[:date].to_i)
    current_date = Time.local(@year, @month, @date)
    # redirect to scoreboard passing next day as params
  end
  
end
