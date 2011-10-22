class CreateDecieases < ActiveRecord::Migration
  def change
    create_table :decieases do |t|
      t.string :name

      t.timestamps
    end
  end
end
