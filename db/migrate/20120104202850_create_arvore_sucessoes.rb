class CreateArvoreSucessoes < ActiveRecord::Migration
  def change
    create_table :arvore_sucessoes do |t|
      t.integer :arvore_id, :null => false
      t.integer :sucessao_id, :null => false
      t.integer :preferencia_id, :null => false
    end
  end
end
