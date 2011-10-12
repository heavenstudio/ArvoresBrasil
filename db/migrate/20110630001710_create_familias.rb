class CreateFamilias < ActiveRecord::Migration
  def up
    create_table :familias do |t|
      t.string :nome, :null => false
    end
    add_index :familias, :nome, :unique
    add_column :arvores, :familia_id, :integer, :null => false
  end

  def down
    remove_column :arvores, :familia_id
    drop_table :familias
  end
end
