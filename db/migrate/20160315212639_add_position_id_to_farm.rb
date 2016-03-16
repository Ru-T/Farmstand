class AddPositionIdToFarm < ActiveRecord::Migration
  def change
    add_column :farms, :position_id, :integer
  end
end
