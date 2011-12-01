class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :nome
      t.string :sigla
      t.integer :pais_id
    end
  end
end
