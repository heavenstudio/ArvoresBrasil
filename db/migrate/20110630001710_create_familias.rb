class CreateFamilias < ActiveRecord::Migration
  def change
    create_table :familias do |t|
      t.string :nome, :null => false
    end
    add_index :familias, :nome, :unique
    add_column :arvores, :familia_id, :integer, :null => false
  end

end
