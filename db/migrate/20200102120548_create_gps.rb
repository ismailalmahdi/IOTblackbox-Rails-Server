class CreateGps < ActiveRecord::Migration[5.2]
  def change
    create_table :gps do |t|
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
      t.boolean :valid
      t.string :type

      t.timestamps
    end
  end
end
