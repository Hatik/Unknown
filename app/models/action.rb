class Action < ActiveRecord::Base
  belongs_to :uploads_action
  belongs_to :comments_action

  validates :title, presence: true
end
