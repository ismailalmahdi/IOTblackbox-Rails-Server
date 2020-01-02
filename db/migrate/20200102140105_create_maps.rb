class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.text :time
      t.float :lat
      t.float :lon
      t.float :alt
      t.string :quality
      t.decimal :satellites
      t.float :hdop
      t.float :geoidal
      t.string :age
      t.string :stationID
      t.text :raw
      t.boolean :is_valid
      t.string :type

      t.timestamps
    end
  end
end
