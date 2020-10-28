class ForexController < ActionController::Base

def first_currency

  @forex_url = "https://api.exchangerate.host/symbols"
  raw_data = open(@forex_url).read
  parsed_data = JSON.parse(raw_data)
  @symbols_array = parsed_data.fetch("symbols").keys

  render({ :template => "/currency_templates/first_currency.html.erb"})
end

def second_currency

  @currency_from_user = params.fetch("")

  # @address_from_user = params.fetch("user_street_address")

  @forex_url = "https://api.exchangerate.host/symbols" + @currency_from_user + ""
  raw_data = open(@forex_url).read
  parsed_data = JSON.parse(raw_data)
  @symbols_array = parsed_data.fetch("symbols").keys

  render({ :template => "/currency_templates/first_currency.html.erb"})


end