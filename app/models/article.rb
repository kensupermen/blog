class Article < ApplicationRecord
  has_many :comments

  validates :title, uniqueness: true 
  validates :body, presence: true
end
