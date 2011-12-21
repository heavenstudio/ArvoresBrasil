class CreateCaracteristicas < ActiveRecord::Migration
  def change
    create_table :caracteristicas do |t|
      t.integer :caracteristica_tipo_id, :null => false
      t.string :nome
    end
    add_index :caracteristicas, :nome, :unique
  end
end


