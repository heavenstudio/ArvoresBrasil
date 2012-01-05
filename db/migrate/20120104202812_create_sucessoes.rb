class CreateSucessoes < ActiveRecord::Migration
  def change
    create_table :sucessoes do |t|
      t.string :nome, :null => false
    end
  end
end
