FactoryGirl.define do
  factory :comment do
    user_id 1
    upload_id 1
    parent_id 1
    note 'Subarashii Komento'
  end

  factory :another_comment do
    user_id 1
    upload_id 1
    note 'Subarashii Komento Number2'
  end
end
