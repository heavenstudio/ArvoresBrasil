class CreateCondicaoTipos < ActiveRecord::Migration
  def change
    create_table :condicao_tipos do |t|
      t.string :nome, :null => false
    end
    add_index :condicao_tipos, :nome, :unique
  end
end
