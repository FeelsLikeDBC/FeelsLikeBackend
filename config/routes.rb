Rails.application.routes.draw do

  resources :city do
    resources :weather_day, shallow: true
  end

  match '/city/:id/weather' => "weather_day#weather", :via => [:get]

end