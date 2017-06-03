class Article < ApplicationRecord

  has_many :comments, :dependent => :delete_all

  validates :title, uniqueness: true, presence: true
  validates :body, presence: true

end
