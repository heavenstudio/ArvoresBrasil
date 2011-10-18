class CreateFolhaCiclos < ActiveRecord::Migration
  def change
    create_table :folha_ciclos do |t|
      t.string :ciclo
      t.text :descricao
    end
    add_index :folha_ciclos, :ciclo, :unique
    add_column :arvores, :folha_ciclo_id, :integer, :null => false
  end
end
