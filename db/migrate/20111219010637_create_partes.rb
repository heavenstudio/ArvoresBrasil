class CreatePartes < ActiveRecord::Migration
  def change
    create_table :partes do |t|
      t.string :nome, :null => false
    end
    add_index :partes, :nome, :unique
  end
end

