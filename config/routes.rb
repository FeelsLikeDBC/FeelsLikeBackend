Rails.application.routes.draw do

  match '/sf' => "city#sf", :via => [:get]
  match '/richmond' => "city#richmond", :via => [:get]
  match '/chicago' => "city#chicago", :via => [:get]
  match '/ny' => "city#ny", :via => [:get]
  match '/kc' => "city#kc", :via => [:get]

  match '/feels_like' => 'weather_day#feels_like', :via => [:get]

end
