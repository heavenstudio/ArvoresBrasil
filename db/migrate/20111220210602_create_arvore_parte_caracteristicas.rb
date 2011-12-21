class CreateArvoreParteCaracteristicas < ActiveRecord::Migration
  def change
    create_table :arvore_parte_caracteristicas , :id => false do |t|
      t.integer :arvore_id, :null => false
      t.integer :parte_id, :null => false
      t.integer :caracteristica_id, :null => false
    end
  end
end
