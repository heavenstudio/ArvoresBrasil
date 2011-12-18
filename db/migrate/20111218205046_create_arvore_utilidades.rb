class CreateArvoreUtilidades < ActiveRecord::Migration
  def change
    create_table :arvore_utilidades do |t|
      t.integer :arvore_id, :null => false
      t.integer :utilidade_id, :null => false
    end
  end
end
