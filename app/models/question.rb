class Question < ApplicationRecord
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :votes, as: :voteable, dependent: :destroy
  belongs_to :user
  has_many :answers, dependent: :destroy

  validates :user_id, :title, :content, presence: true

  def self.ordered_json
    order("created_at DESC").limit(50).to_json(methods: :hashtag_names)
  end
end
