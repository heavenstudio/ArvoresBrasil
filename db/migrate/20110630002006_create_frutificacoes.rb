class CreateFrutificacoes < ActiveRecord::Migration
  def up
    create_table :frutificacoes do |t|
      t.integer :arvore_id
      t.integer :mes, :limit => 1
      t.timestamps
    end
  end

  def down
    drop_table :frutificacoes
  end
end
