class CreateUtilidades < ActiveRecord::Migration
  def change
    create_table :utilidades do |t|
      t.integer :utilidade_tipo_id, :null => false
      t.string :nome, :null => false
    end
  end
end
