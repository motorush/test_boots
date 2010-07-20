class CreateResourcesDatas < ActiveRecord::Migration
  def self.up
    create_table :resources_datas do |t|
      t.references :resources_field
      t.string :value

      t.timestamps
    end
  end

  def self.down
    drop_table :resources_datas
  end
end
