class CreateGerminacaoTaxas < ActiveRecord::Migration
  def change
    create_table :germinacao_taxas do |t|
      t.string  :nome
      t.string  :descricao
    end
    add_index :germinacao_taxas, :nome, :unique
    add_column :arvores, :germinacao_taxa_id, :integer
  end
end
