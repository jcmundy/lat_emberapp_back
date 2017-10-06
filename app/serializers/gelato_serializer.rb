class GelatoSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :flavors
end
