class CreateNomesPopulares < ActiveRecord::Migration
  def change
    create_table :nomes_populares do |t|
      t.string :nome
      t.timestamps
    end
  end
end
