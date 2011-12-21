class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.integer :produto_tipo_id, :null => false
      t.string  :nome
    end
    add_index :produtos, :nome, :unique
  end
end
