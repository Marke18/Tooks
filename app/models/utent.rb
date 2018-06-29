class Utent < ApplicationRecord
    has_many :orders
    has_many :lines, through :orders
    validates :email, presence: true, length: { minimum: 11 }
    validates :password, presence: true,  length: { minimum: 8 }

end
