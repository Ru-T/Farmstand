class Farm < ActiveRecord::Base
  has_many :users

  default_scope { order(name: :asc) }
end
