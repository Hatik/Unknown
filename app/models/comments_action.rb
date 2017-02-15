class CommentsAction < ActiveRecord::Base
  belongs_to :comment
  belongs_to :user
  has_one :action
end
