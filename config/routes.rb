Rails.application.routes.draw do

  resources :city do
    resources :weather_days, shallow: true
  end

  # match '/SF' => "city#sf", :via => [:get]

  # # match '/sf/' => "weather_day#"

  # match '/RVA' => "city#richmond", :via => [:get]

  # match '/CHI' => "city#chicago", :via => [:get]

  # match '/NYC' => "city#ny", :via => [:get]

  # match '/KC' => "city#kc", :via => [:get]

end
