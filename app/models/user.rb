class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 15}
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  
  VAILD_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]+{8,32}\z/
  validates :password, presence: true, format: { with: VAILD_PASSWORD_REGEX }
  
  has_secure_password
  
  has_many :topics
  
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
  
  has_many :comments
  has_many :comment_topics, through: :comments, source: 'topic'
  
end
