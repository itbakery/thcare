class CreateEvacuees < ActiveRecord::Migration
  def change
    create_table :evacuees do |t|
      t.references :evacuation_center
      t.string :code
      t.integer :idcard
      t.string :name
      t.string :surname
      t.string :gender
      t.integer :age
      t.string :address
      t.string :district
      t.string :province
      t.string :phone
      t.string :contact
      t.string :hospital
      t.string :pet

      t.timestamps
    end
    add_index :evacuees, :evacuation_center_id
  end
end
