class Airport < ApplicationRecord
  validates :code, length: { is: 3 }
end
