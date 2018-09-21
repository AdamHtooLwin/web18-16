Rails.application.routes.draw do
  get 'ps1/divide_by_zero_exception'
  get 'ps1/news'
  get "/ps1" => "ps1#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "index#index"

  get "/ps3" => "ps3#index"
  get "/ps3/project_plan" => "project_plan#index"
  get "/ps3/project_plan/user1" => "user#index"
  get "/ps3/project_plan/user2" => "user#user2"
  get "/ps3/documentation" => "project_plan#docu"
end
