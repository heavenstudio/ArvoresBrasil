class CreateCaracteristicaTipos < ActiveRecord::Migration
  def change
    create_table :caracteristica_tipos do |t|
      t.string :nome
    end
    add_index :caracteristica_tipos, :nome, :unique
  end
end
