class FlavorResource < JSONAPI::Resource
  attributes :name
  belongs_to :yogurt
  belongs_to :gelato
end