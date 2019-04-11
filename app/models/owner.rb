class Owner < ApplicationRecord
  has_many :castles, dependent: :destroy
  has_many :regions, dependent: :destroy
end
