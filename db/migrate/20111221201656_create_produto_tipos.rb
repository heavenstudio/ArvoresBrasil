class CreateProdutoTipos < ActiveRecord::Migration
  def change
    create_table :produto_tipos do |t|
      t.string :nome
    end
    add_index :produto_tipos, :nome, :unique
  end
end
