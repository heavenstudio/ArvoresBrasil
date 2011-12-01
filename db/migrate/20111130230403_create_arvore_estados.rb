class CreateArvoreEstados < ActiveRecord::Migration
  def change
    create_table :arvore_estados, :id => false do |t|
      t.integer :arvore_id, :null => false
      t.integer :estado_id, :null => false
      t.timestamps
    end
  end
end
