class CreateArvoreNomesCientificos < ActiveRecord::Migration
  def change
    create_table :arvore_nomes_cientificos, :id => false do |t|
      t.integer :arvore_id, :null => false
      t.integer :genero_id, :null => false
      t.string  :especie,   :null => false
      t.integer :ordem,     :limit => 1
      t.timestamps
    end
  end
end