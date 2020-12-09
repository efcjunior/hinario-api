class Hino
  include Mongoid::Document
  field :numero, type: String
  field :titulo, type: String
  field :compositor, type: String
  field :paragrafos, type: Array
end
