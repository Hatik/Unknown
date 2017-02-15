class CommentsReply < ActiveRecord::Base
  belongs_to :comment, class_name: 'Comment'
end
