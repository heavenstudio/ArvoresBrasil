class CreateArvoreCondicoes < ActiveRecord::Migration
  def change
    create_table :arvore_condicoes do |t|
      t.integer :arvore_id, :null => false
      t.integer :condicao_id, :null => false
      t.integer :preferencia_id, :null => false
    end
  end
end
