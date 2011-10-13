class CreatePaises < ActiveRecord::Migration
  def change
    create_table :paises do |t|
      t.string :nome, :null => false
    end
    add_index :paises, :nome, :unique
    add_column :arvores, :pais_id, :integer
  end
end
