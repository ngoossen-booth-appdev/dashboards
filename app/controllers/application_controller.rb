class ApplicationController < ActionController::Base


def first
  render({ :template => "/something_templates/index.html.erb" })
end

# def forex
#   render({ :template => "/something_templates/forex.html.erb"})
# end




end
