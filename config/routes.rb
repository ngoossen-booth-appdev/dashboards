Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/",{ :controller => "application", :action => "first"})
  get("/forex", { :controller => "forex", :action => "forex" })


end
