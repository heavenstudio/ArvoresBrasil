class CreateCrescimentos < ActiveRecord::Migration
  def change
    create_table :crescimentos do |t|
      t.string  :nome
      t.text    :descricao
    end
    add_index :crescimentos, :nome, :unique
    add_column :arvores, :crescimento_id, :integer
  end
end
