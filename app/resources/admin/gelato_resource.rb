class Admin::GelatoResource < JSONAPI::Resource
  attributes :name
  has_many :flavors
end