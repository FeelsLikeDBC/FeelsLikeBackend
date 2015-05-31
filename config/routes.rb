Rails.application.routes.draw do

  resources :city do
    resources :weather_day, shallow: true
  end

# Feels Like
  match '/city/:id/feels_like' => "weather_day#feels_like", :via => [:get]
  match '/city/:id/feels_like_monthly' => "weather_day#feels_like_monthly", :via => [:get]
  match '/city/:id/feels_like_yearly' => "weather_day#feels_like_yearly", :via => [:get]

# Actual Temp
  # match '/city/:id/actual_temp' => "weather_day#actual_temp", :via => [:get]
  # match '/city/:id/actual_temp_monthly' => "weather_day#actual_temp_monthly", :via => [:get]
  # match '/city/:id/actual_temp_yearly' => "weather_day#actual_temp_yearly", :via => [:get]

# Rise Set
  # match '/city/:id/rise_set' => "weather_day#rise_set", :via => [:get]
  # match '/city/:id/rise_set_monthly' => "weather_day#rise_set_monthly", :via => [:get]
  # match '/city/:id/rise_set_yearly' => "weather_day#rise_set_yearly", :via => [:get]

# Rain Snow
  # match '/city/:id/rain_snow' => "weather_day#rain_snow", :via => [:get]
  # match '/city/:id/rain_snow_monthly' => "weather_day#rain_snow_monthly", :via => [:get]
  # match '/city/:id/rain_snow_yearly' => "weather_day#rain_snow_yearly", :via => [:get]

# Everything Else
  # match '/city/:id/everything_else' => "weather_day#everything_else", :via => [:get]
  # match '/city/:id/everything_else_monthly' => "weather_day#everything_else_monthly", :via => [:get]
  # match '/city/:id/everything_else_yearly' => "weather_day#everything_else_yearly", :via => [:get]

end
