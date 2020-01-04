class RenameColumnNamesForMaps < ActiveRecord::Migration[5.2]
  def change
    remove_column :maps, :time, :text
    add_column :maps, :gps_time, :text
    remove_column :maps, :raw, :text
    add_column :maps, :gps_raw, :text

  end
end
