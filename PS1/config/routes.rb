Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "static#index"
  # root application#divide_by_zero

  get "/basics" => "static#index"

  get "/basics/divide_by_zero" => "exception#divide_by_zero"
  get "/basics/news" => "news#index"
end
