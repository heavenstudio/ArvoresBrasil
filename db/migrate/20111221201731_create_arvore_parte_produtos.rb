class CreateArvoreParteProdutos < ActiveRecord::Migration
  def change
    create_table :arvore_parte_produtos do |t|
      t.integer :arvore_id, :null => false
      t.integer :parte_id, :null => false
      t.integer :produto_id, :null => false
    end
  end
end
