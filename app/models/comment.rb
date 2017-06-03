class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user

  validates :comment_message, presence: true

end
