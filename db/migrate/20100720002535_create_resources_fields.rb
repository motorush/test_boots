class CreateResourcesFields < ActiveRecord::Migration
  def self.up
    create_table :resources_fields do |t|
      t.string :name
      t.references :resources_table

      t.timestamps
    end
  end

  def self.down
    drop_table :resources_fields
  end
end
