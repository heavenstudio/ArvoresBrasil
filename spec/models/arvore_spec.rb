require 'spec_helper'

describe Arvore do
  context "relations" do
    it { should have_many :nomes_populares }
    it { should have_many :generos }
    it { should have_many :utilidades }
    it { should have_many :partes }
    it { should have_many :caracteristicas }
    it { should have_many :produtos }
    it { should have_many :condicoes }
    it { should have_many :sucessoes }
    it { should have_many :livros }
    it { should have_many :estados }
    it { should have_many :floracoes}
    it { should have_many :frutificacoes }

    it { should belong_to :familia }
    it { should belong_to :extincao }
    it { should belong_to :pais }
    it { should belong_to :raiz }
    it { should belong_to :germinacao_taxa }
    it { should belong_to :germinacao_tempo }
    it { should belong_to :folha_ciclo }
    it { should belong_to :crescimento }
  end
  
  context "validations" do
    it { should validate_presence_of :altura_minima }
    it { should validate_presence_of :familia_id }
    it { should validate_presence_of :pais }
    it { should validate_presence_of :extincao }
    it { should validate_presence_of :germinacao_taxa }
    it { should validate_presence_of :germinacao_tempo }
    it { should validate_numericality_of(:altura_minima).with_message(" - deve ser um numero entre 0 e 100")}
  end
end