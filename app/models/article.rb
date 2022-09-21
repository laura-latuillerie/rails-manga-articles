class Article < ApplicationRecord
  belongs_to :user
  belongs_to :manga
  has_many :comments
  validates :title, presence: true
  validates :content, presence: true
end
