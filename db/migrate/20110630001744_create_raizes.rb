class CreateRaizes < ActiveRecord::Migration
  def up
    create_table :raizes do |t|

      t.string  :nome
      t.text    :descricao
      t.timestamps
    end
  end

  def down
    drop_table :raizes
  end
end
