class CreateEvacuees < ActiveRecord::Migration
  def change
    create_table :evacuees do |t|
      t.references :evacuation_center
      t.string :code
      t.integer :national_id
      t.string :name
      t.string :surname
      t.string :sex
      t.integer :age
      t.text :address
      t.string :district
      t.string :province
      t.text :contactperson
      t.text :health
      t.text :hospital
      t.text :pet

      t.timestamps
    end
    add_index :evacuees, :evacuation_center_id
  end
end
