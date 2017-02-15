class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :upload
  has_many :comments_actions
  has_many :comments_replies, foreign_key: :parent_comment_id, foreign_key: :reply_comment_id

  validates :note, presence: true
end
