class CreateGerminacaoTaxas < ActiveRecord::Migration
  def change
    create_table :germinacao_taxas do |t|
      t.string  :taxa
      t.string  :descricao
    end
    add_index :germinacao_taxas, :taxa, :unique
    add_column :arvores, :germinacao_taxa_id, :integer, :null => false
  end
end
