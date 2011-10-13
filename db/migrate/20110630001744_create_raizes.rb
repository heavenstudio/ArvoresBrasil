class CreateRaizes < ActiveRecord::Migration
  def change
    create_table :raizes do |t|
      t.string  :nome
      t.text    :descricao
    end
  end
end
