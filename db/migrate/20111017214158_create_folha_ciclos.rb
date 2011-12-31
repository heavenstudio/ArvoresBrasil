class CreateFolhaCiclos < ActiveRecord::Migration
  def change
    create_table :folha_ciclos do |t|
      t.string :nome
      t.text :descricao
    end
    add_index :folha_ciclos, :nome, :unique
    add_column :arvores, :folha_ciclo_id, :integer
  end
end
