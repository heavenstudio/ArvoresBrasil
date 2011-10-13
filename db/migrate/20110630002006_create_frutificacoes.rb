class CreateFrutificacoes < ActiveRecord::Migration
  def change
    create_table :frutificacoes do |t|
      t.integer :arvore_id
      t.integer :mes, :limit => 1
      t.timestamps
    end
  end
end
