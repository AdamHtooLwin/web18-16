Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "index#index"

  get "/ps3" => "ps3#index"
  get "/ps3/project_plan" => "project_plan#index"
end
