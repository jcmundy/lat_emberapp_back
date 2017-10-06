class FlavorSerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :gelato
  belongs_to :yogurt
end
