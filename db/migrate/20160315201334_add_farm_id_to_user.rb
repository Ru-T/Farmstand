class AddFarmIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :farm_id, :integer
  end
end
