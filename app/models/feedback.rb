class Feedback < ApplicationRecord
  validates :email, presence: true
  validates :content, presence: true
end
