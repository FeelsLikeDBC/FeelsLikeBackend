Rails.application.routes.draw do

  match '/:city' => "city#index", :via => [:get]

end
