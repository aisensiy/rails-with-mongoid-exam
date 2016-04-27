class Production
  include Mongoid::Document
  field :title, type: String
  field :price, type: Float
end
