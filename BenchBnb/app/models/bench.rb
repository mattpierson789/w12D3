class Bench < ApplicationRecord

   validates  :title, :description, :price, :seating, :lat, :lng, presence: true
   validates :price numericality: true, inclusion: {in 10..1000, message: 'must be between 10 and 1000'}

end
