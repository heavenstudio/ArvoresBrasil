class CreateCondicoes < ActiveRecord::Migration
  def change
    create_table :condicoes do |t|
      t.integer :condicao_tipo_id, :null => false
      t.string :nome, :null => false
      t.string :descricao, :null => false
    end
    add_index :condicoes, :nome, :unique
  end
end
