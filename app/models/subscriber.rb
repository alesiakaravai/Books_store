class Subscriber < ApplicationRecord
  has_many :subscriptions

  validates :name, presence: true
  validates :name, length: { maximum: 150, too_long: "%{count} characters is the maximum allowed" }
end
