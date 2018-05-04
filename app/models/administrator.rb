class Administrator < ApplicationRecord
  devise :database_authenticatable, :validatable

  has_attached_file :avatar, styles: { thumb: "91x91>" },
                             default_url: "image/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :avatar, attachment_presence: true
end
