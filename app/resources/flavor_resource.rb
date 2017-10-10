class FlavorResource < JSONAPI::Resource
  attributes :name
  relationship :yogurt, to: :one
  relationship :gelato, to: :one
end