FactoryGirl.define do
  factory :comments_reply do
    parent_comment_id 1
    reply_comment_id 1
  end
end
