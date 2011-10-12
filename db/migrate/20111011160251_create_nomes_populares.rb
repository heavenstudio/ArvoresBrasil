class CreateNomesPopulares < ActiveRecord::Migration
  def change
    create_table :nomes_populares, :id => false do |t|
      t.integer :arvore_id, :null => false
      t.integer :popular_id, :null => false
      t.integer :ordem, :limit => 1
      t.timestamps
    end
  end
end
