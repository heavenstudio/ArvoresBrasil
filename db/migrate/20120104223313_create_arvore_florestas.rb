class CreateArvoreFlorestas < ActiveRecord::Migration
  def change
    create_table :arvore_florestas do |t|
      t.integer :arvore_id, :null => false
      t.integer :floresta_id, :null => false
      t.integer :preferencia_id, :null => false
    end
  end
end
