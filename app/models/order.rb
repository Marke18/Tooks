class Order < ApplicationRecord
  has_one :line
  belongs_to :utent
  validates :data, presence: true
end
