class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.references :evacuee
      t.references :deciease
      t.string :remark

      t.timestamps
    end
    add_index :symptoms, :evacuee_id
    add_index :symptoms, :deciease_id
  end
end
