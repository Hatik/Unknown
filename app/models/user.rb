class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :uploads
  has_many :comments_actions
  has_many :uploads_actions


  validates :username,            presence: true,
                                  uniqueness: true
  validates :email,               presence: true,
                                  length: {minimum: 3, maximum: 254},
                                  uniqueness: true,
                                  format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :encrypted_password,  presence: true

end
