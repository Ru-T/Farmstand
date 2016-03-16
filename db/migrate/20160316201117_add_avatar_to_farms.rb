class AddAvatarToFarms < ActiveRecord::Migration
  def change
    add_column :farms, :avatar, :string
  end
end
