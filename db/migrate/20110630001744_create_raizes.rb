class CreateRaizes < ActiveRecord::Migration
  def change
    create_table :raizes do |t|
      t.string  :nome
      t.text    :descricao
    end
    add_index :raizes, :nome, :unique
    add_column :arvores, :raiz_id, :integer, :null => false    
  end
end
