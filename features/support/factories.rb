FactoryBot.define do
  factory :student, class: User do
    email {"student@ait.asia"}
    password {"password"}
    password_confirmation {"password"}
  end


end