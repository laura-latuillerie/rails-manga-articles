class Article < ApplicationRecord
  belongs_to :user
  belongs_to :manga
  has_many :comments
  validates :title, presence: true
  validates :content, presence: true
  has_one_attached :photo
end
