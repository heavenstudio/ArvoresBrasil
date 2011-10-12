class CreateCrescimentos < ActiveRecord::Migration
  def up
    create_table :crescimentos do |t|
      t.string  :nome
      t.text    :descricao
      t.timestamps
    end
  end

  def self.down
    drop_table :crescimentos
  end
end
