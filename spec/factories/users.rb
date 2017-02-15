FactoryGirl.define do
  factory :user do
    username 'User'
    name 'test'
    email 'user@user.com'
    password '123123'
    description 'test description'
    avatar_path ''
    admin true
  end
end
