FactoryGirl.define do
  factory :user do
    first_name "MyString"
    last_name "MyString"
    username "MyString"
    email "example@example.com"
    city "MyString"
    state "MyString"
    password "password"
    password_confirmation "password"
  end

end
