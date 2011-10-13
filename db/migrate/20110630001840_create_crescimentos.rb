class CreateCrescimentos < ActiveRecord::Migration
  def change
    create_table :crescimentos do |t|
      t.string  :nome
      t.text    :descricao
    end
  end
end
