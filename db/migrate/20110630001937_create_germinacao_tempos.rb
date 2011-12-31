class CreateGerminacaoTempos < ActiveRecord::Migration
  def change
    create_table :germinacao_tempos do |t|
      t.string  :nome
    end
    add_index :germinacao_tempos, :nome, :unique
    add_column :arvores, :germinacao_tempo_id, :integer
  end
end
