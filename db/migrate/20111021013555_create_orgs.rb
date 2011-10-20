class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.references :orgtype
      t.string :title
      t.text :commander
      t.text :regulation

      t.timestamps
    end
    add_index :orgs, :orgtype_id
  end
end
