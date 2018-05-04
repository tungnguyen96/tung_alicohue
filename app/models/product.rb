class Product < ApplicationRecord
  belongs_to :sub_category
  has_attached_file :avatar, styles: { thumb: "100x100>", small: "130x130>", medium: "300x300>" },
                             default_url: "image/:style/missing.png"

  validates :name, presence: true
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :avatar, attachment_presence: true
end
