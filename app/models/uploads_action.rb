class UploadsAction < ActiveRecord::Base
  belongs_to :upload
  belongs_to :user
  has_one :action
end
