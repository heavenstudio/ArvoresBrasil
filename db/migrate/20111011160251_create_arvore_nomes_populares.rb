class CreateArvoreNomesPopulares < ActiveRecord::Migration
  def change
    create_table :arvore_nomes_populares, :id => false do |t|
      t.integer :arvore_id, :null => false
      t.integer :nome_popular_id, :null => false
      t.integer :ordem, :limit => 1
      t.timestamps
    end
  end
end
