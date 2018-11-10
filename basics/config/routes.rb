Rails.application.routes.draw do

  # PS5 Routes
  get "/ps5" => 'ps5#index'
  get 'ps5/documentation'
  get 'ps5/documentation/versions' => 'docu#versions'
  get 'ps5/documentation/flowcontrol' => 'docu#flowcontrol'
  get 'ps5/documentation/contentDM' => 'docu#contentDM'
  get 'ps5/drone_registration'
  get 'ps5/drone_list'
  get 'ps5/users_list'
  post 'ps5/drone_create'
  put 'ps5/ban_user'

  # Devise routes
  devise_for :users

  get "/ps4" => "ps4#index"
  get 'ps4/index'
  get 'ps4/documentation'


  # PS3 Routes
  get "/ps3" => "ps3#index"
  get "/ps3/project_plan" => "project_plan#index"
  get "/ps3/project_plan/user1" => "user#index"
  get "/ps3/project_plan/user2" => "user#user2"

  # PS2 Routes
  get "/ps2" => "ps2#quotations"
  get 'ps2/quotations'

  # PS1 Routes
  get 'ps1/divide_by_zero_exception'
  get 'ps1/news'
  get "/ps1" => "ps1#index"

  root "index#index"

end
