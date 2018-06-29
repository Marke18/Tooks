class Line < ApplicationRecord
  belongs_to :order
  belongs_to :game
  validates :quantita, presence: true
  validates :prezzo, presence: true

end
