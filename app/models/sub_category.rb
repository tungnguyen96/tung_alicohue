class SubCategory < ApplicationRecord
  belongs_to :category
  has_many :products

  validates :title, presence: true
end
