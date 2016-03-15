class User < ActiveRecord::Base
  belongs_to :farm

  validates_presence_of :name, :bio
end
