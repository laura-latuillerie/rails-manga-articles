class Manga < ApplicationRecord
  has_many :articles
  validates :title, presence: true
  has_one_attached :photo
end
