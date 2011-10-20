class CreateEvacuationCenters < ActiveRecord::Migration
  def change
    create_table :evacuation_centers do |t|
      t.string :title
      t.string :location
      t.string :address
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.references :org
      t.text :context
      t.integer :maximun
      t.text :transport

      t.timestamps
    end
    add_index :evacuation_centers, :org_id
  end
end
