Rails.application.routes.draw do
  get "/ps5" => 'ps5#index'
  get 'ps5/documentation'
  get 'ps5/documentation/versions' => 'docu#versions'
  get 'ps5/documentation/flowcontrol' => 'docu#flowcontrol'
  get 'ps5/drone_registration'
  devise_for :users
  get "/ps4" => "ps4#index"
  get 'ps4/index'
  get 'ps4/documentation'
  get 'ps1/divide_by_zero_exception'
  get 'ps1/news'
  get "/ps1" => "ps1#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "index#index"

  get "/ps3" => "ps3#index"
  get "/ps3/project_plan" => "project_plan#index"
  get "/ps3/project_plan/user1" => "user#index"
  get "/ps3/project_plan/user2" => "user#user2"

  get "/ps2" => "ps2#quotations"
  get 'ps2/quotations'

end
