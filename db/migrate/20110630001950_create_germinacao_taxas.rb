class CreateGerminacaoTaxas < ActiveRecord::Migration
  def up
    create_table :germinacao_taxas do |t|
      t.string  :taxa
      t.string  :descricao
      t.timestamps
    end
  end

  def down
    drop_table :germinacao_taxas
  end
end
