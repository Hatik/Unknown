class Category < ActiveRecord::Base
  has_many :uploads

  validates :title,     presence: true
end
