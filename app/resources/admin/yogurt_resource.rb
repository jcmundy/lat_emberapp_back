class Admin::YogurtResource < JSONAPI::Resource
  attributes :name
  has_many :flavors
end