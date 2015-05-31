Rails.application.routes.draw do

  resources :city do
    resources :weather_day, shallow: true
  end

  match '/city/:id/feels_like' => "weather_day#feels_like", :via => [:get]
  match '/city/:id/feels_like_yearly' => "weather_day#feels_like_yearly", :via => [:get]


end
