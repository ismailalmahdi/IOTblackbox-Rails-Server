class AddingColumnsAndImageToSensors < ActiveRecord::Migration[5.2]
  def change
    add_column :sensors, :description, :text
  end
end
