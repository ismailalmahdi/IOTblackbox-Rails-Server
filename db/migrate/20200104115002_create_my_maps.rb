class CreateMyMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :my_maps do |t|
      t.string :testing

      t.timestamps
    end
  end
end
