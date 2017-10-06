class Flavor < ApplicationRecord
  belongs_to :gelato, optional: true
  belongs_to :yogurt, optional: true
end
