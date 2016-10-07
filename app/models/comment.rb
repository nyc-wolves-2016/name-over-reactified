class Comment < ApplicationRecord

  belongs_to :commentable, polymorphic: true
  belongs_to :user
  has_many :votes, as: :voteable, dependent: :destroy

  validates :content, :commentable_id, :commentable_type, :user_id, presence: true
end
