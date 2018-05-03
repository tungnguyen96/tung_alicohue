class CompanyInfo < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :website, presence: true
  validates :intro, presence: true
end
