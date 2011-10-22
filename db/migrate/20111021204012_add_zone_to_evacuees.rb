class AddZoneToEvacuees < ActiveRecord::Migration
  def change
    add_column :evacuees, :zone, :string
  end
end
