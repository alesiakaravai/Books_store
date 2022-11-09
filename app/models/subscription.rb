class Subscription < ApplicationRecord
  belongs_to :book
  belongs_to :subscriber

  #validates :is_active, presence: true 
end
