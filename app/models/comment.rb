class Comment < ApplicationRecord
  belongs_to :post
  validates :usernames, presence: true, length: {minimum: 5}
  validates :body, presence: true, length: {minimum: 20}
end
