class ForexController < ActionController::Base

def first_currency

  @forex_url = "https://api.exchangerate.host/symbols"
  raw_data = open(@forex_url).read
  parsed_data = JSON.parse(raw_data)
  @symbols_array = parsed_data.fetch("symbols").keys

  render({ :template => "/currency_templates/first_currency.html.erb"})
end

def second_currency

  @first_currency = params.fetch("first_currency")

  @forex_url = "https://api.exchangerate.host/symbols"
  raw_data = open(@forex_url).read
  parsed_data = JSON.parse(raw_data)
  @symbols_array = parsed_data.fetch("symbols").keys

  render({ :template => "/currency_templates/second_currency.html.erb"})
end

def currency_result
  @first_currency = params.fetch("first_currency")
  @second_currency = params.fetch("second_currency")

  @exchange_url = "https://api.exchangerate.host/convert?from=" + @first_currency + "&to=" + @second_currency+""
  raw_data = open(@exchange_url).read
  parsed_data = JSON.parse(raw_data)
    
  @exchange_rate =parsed_data.fetch("result")

  render({ :template => "/currency_templates/currency_result.html.erb"})
end

end