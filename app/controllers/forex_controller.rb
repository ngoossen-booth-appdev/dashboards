class ForexController < ActionController::Base

def forex

  @forex_url = "https://api.exchangerate.host/symbols"
  raw_data = open(@forex_url).read
  parsed_data = JSON.parse(raw_data)
  symbols_array = parsed_data.fetch("symbols").keys
  # first_result = symbols_array.at(0)
  # @first_symbol=first_result

# so now that I have the first 


  render({ :template => "/something_templates/forex.html.erb"})
end





end