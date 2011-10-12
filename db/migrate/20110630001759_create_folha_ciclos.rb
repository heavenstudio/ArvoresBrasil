class CreateFolhaCiclos < ActiveRecord::Migration
  def up
    create_table :folha_ciclos do |t|
      t.string  :nome
      t.text    :descricao
      t.timestamps
    end
  end

  def down
    drop_table :folha_ciclos
  end
end
