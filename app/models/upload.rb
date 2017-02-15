class Upload < ActiveRecord::Base
  belongs_to :user
  belongs_to :categories
  has_many :uploads_actions
  has_many :comments

  validates :title,           presence: true
  validates :image_path,      presence: true
end
