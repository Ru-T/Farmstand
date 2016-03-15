class Product < ActiveRecord::Base
  has_and_belongs_to_many :farms

  validates_presence_of :name, :description
end
