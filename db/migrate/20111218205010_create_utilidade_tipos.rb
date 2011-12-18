class CreateUtilidadeTipos < ActiveRecord::Migration
  def change
    create_table :utilidade_tipos do |t|
      t.string :nome
    end
    add_index :utilidade_tipos, :nome, :unique
  end
end



