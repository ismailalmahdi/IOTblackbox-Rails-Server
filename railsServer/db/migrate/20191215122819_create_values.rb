class CreateValues < ActiveRecord::Migration[5.2]
  def change
    create_table :values do |t|
      t.text :json
      t.belongs_to :sensor, index: true 
      t.timestamps
    end
  end
end
