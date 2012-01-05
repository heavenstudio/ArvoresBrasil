class CreateFlorestas < ActiveRecord::Migration
  def change
    create_table :florestas do |t|
      t.string :nome, :null => false
    end
    add_index :florestas, :nome, :unique
  end
end
