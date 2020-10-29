class CovidController < ActionController::Base

def home

  # @forex_url = "https://api.exchangerate.host/symbols"
  # raw_data = open(@forex_url).read
  # parsed_data = JSON.parse(raw_data)
  # @symbols_array = parsed_data.fetch("symbols").keys

  render({ :template => "/covid_templates/covid.html.erb"})
end


end