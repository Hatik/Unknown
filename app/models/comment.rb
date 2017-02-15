class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :upload
  has_many :comments_actions
  has_many :comments, foreign_key: :parent_id, class_name: 'Comment'
  belongs_to :comments, foreign_key: :parent_id, class_name: 'Comment'

  validates :note, presence: true
end
