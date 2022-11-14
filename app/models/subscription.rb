class Subscription < ApplicationRecord
  belongs_to :book
  belongs_to :subscriber

  validates_associated :book
  validates_associated :subscriber

  validates :start, presence: true
  validates :is_active, inclusion: { in: [true, false]}
end
