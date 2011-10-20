class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :project
      t.integer :admin_user_id
      t.string :title
      t.boolean :is_done
      t.date :due_date

      t.timestamps
    end
    add_index :tasks, :project_id
  end
end
