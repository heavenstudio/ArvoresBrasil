class CreatePreferencias < ActiveRecord::Migration
  def change
    create_table :preferencias do |t|
      t.string :nome, :null => false
    end
  end
end
