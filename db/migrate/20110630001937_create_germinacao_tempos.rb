class CreateGerminacaoTempos < ActiveRecord::Migration
  def up
    create_table :germinacao_tempos do |t|
      t.string  :tempo
      t.timestamps
    end
  end

  def down
    drop_table :germinacao_tempos
  end
end
