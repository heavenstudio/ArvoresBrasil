class CreateGerminacaoTempos < ActiveRecord::Migration
  def change
    create_table :germinacao_tempos do |t|
      t.string  :tempo
    end
    add_index :germinacao_tempos, :tempo, :unique
    add_column :arvores, :germinacao_tempo_id, :integer, :null => false
  end
end
