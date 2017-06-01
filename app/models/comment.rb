class Comment < ApplicationRecord
  belongs_to :article

  validates :comment_message, presence: true
end
