class Category < ApplicationRecord
    has_many :games
    validates :nome_cat, presence: true, length: { minimum: 5 }
    validates :descr, presence: true,  length: { maximum: 300 }
    validates :img1, presence: true
end
