class CreatePaises < ActiveRecord::Migration
  def up
    create_table :paises do |t|
      t.string :nome, :null => false
    end
    add_index :paises, :nome, :unique
    add_column :arvores, :pais_id, :integer
  end

  def down
    remove_column :arvores, :pais_id
    drop_table :paises
  end
end
