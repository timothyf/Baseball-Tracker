
# Parses the MLB Gameday eventLog.xml file
class EventLog
  
  attr_accessor :home_team, :away_team
  attr_accessor :home_events, :away_events
  
  
  # Loads the eventLog XML from the MLB gameday server and parses it using REXML
  def load_from_id(gid)
    @gid = gid
    @xml_data = GamedayFetcher.fetch_eventlog(gid)
    @xml_doc = REXML::Document.new(@xml_data)
  end
  
end