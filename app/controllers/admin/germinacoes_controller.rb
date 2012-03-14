module Admin
class GerminacoesController < BaseController
  def index
    @germinacao_taxas = GerminacaoTaxa.order('nome')
    @germinacao_tempos = GerminacaoTempo.order('nome')
  end
 
end
end



