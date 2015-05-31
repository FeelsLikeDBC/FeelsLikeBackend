Rails.application.routes.draw do

  match '/:city/:options' => "city#index", :via => [:get]

end
