class CreatePopulares < ActiveRecord::Migration
  def change
    create_table :populares do |t|
      t.string :nome
      t.timestamps
    end
  end
end
