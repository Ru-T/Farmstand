class Farm < ActiveRecord::Base
  has_many :users
  has_and_belongs_to_many :products
  belongs_to :position

  validates_presence_of :name, :location, :description

  default_scope { order(name: :asc) }
end
