module Admin
class GerminacaoTaxasController < BaseController

  def new
    @germinacao_taxa = GerminacaoTaxa.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @germinacao_taxa = GerminacaoTaxa.find(params[:id])
  end
  
  def create
    @germinacao_taxa = GerminacaoTaxa.new(params[:germinacao_taxa])
    if @germinacao_taxa.save
      redirect_to admin_germinacoes_url, notice: 'GerminacaoTaxa criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @germinacao_taxa = GerminacaoTaxa.find(params[:id])
    if @germinacao_taxa.update_attributes(params[:germinacao_taxa])
      redirect_to [:admin, @germinacoes], notice: 'Germinacao Taxa alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @germinacao_taxa = GerminacaoTaxa.find(params[:id])
    @germinacao_taxa.destroy
    redirect_to admin_germinacoes_url
  end
  
end
end



