class AddSensorTypeColumnToSensors < ActiveRecord::Migration[5.2]
  def change
    add_column :sensors, :sensor_type, :string
  end
end
