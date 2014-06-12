class EggBasket < ActiveRecord::Base
  belongs_to :user
  has_many :egg_clutches
end
