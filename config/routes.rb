Rails.application.routes.draw do
  get("/", {:controller=> "static", :action => "home"})
  get("/dice/:num/:sides", {:controller=> "static", :action => "roll"})
end
