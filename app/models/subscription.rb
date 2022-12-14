class Subscription < ApplicationRecord
  belongs_to :tea
  belongs_to :customer

  enum status: {"subscribed" => 0, "unsubscribed" => 1}

  validates :title, presence: true
  validates :price, presence: true, numericality: true
  validates :status, presence: true
  validates :frequency, presence: true, numericality: true
end
