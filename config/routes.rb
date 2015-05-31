Rails.application.routes.draw do

  resources :city do
    resources :weather_day, shallow: true
  end

  match '/city/:id/feels_like' => "weather_day#feels_like", :via => [:get]


end
