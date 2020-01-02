class RenameColumnTypeFromMaps < ActiveRecord::Migration[5.2]
  def change
      remove_column :maps, :type, :string
      add_column :maps, :gps_type, :string
  end
end
