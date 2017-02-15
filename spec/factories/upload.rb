FactoryGirl.define do
  factory :upload do
    user_id 1
    title 'first Upload'
    image_path '/.'
    category_id 1
    show_flag true
    rating 0
  end

end
