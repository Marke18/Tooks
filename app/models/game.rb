class Game < ApplicationRecord
  belongs_to :category
  has_many :lines
  validates :nome, presence: true, length: { minimum: 5 }
  validates :descr, presence: true,  length: { maximum: 300 }
  validates :img1, presence: true
  validates :img2, presence: true
  validates :img3, presence: true
  validates :prezzo, presence: true

end
