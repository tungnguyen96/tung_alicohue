class CompanyInfo < ApplicationRecord
  has_attached_file :avatar, styles: { thumb: "91x91>", medium: "300x200>" },
                             default_url: "image/:style/missing.png"

  validates :name, presence: true
  validates :address, presence: true
  validates :website, presence: true
  validates :intro, presence: true
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/ 
  validates :avatar, attachment_presence: true 
end
