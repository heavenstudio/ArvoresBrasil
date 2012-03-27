class CreateFamilias < ActiveRecord::Migration
  def change
    create_table :familias do |t|
      t.string :nome
    end
    add_index :familias, :nome, :unique
    add_column :arvores, :familia_id, :integer
  end

end
