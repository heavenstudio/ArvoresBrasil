class CreateFolhaCiclos < ActiveRecord::Migration
  def change
    create_table :folha_ciclos do |t|
      t.string  :nome
      t.text    :descricao
    end
  end
end
