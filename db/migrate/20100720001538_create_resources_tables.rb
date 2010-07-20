class CreateResourcesTables < ActiveRecord::Migration
  def self.up
    create_table :resources_tables do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :resources_tables
  end
end
