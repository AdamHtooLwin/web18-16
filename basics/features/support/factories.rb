FactoryBot.define do
  factory :user, class: User do
    email "a@c.com"
    password "secret"
    password_confirmation "secret"
  end
end