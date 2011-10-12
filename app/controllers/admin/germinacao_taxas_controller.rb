module Admin
class GerminacaoTaxasController < BaseController
  def index
    @germinacao_taxas = GerminacaoTaxa.order('taxa').paginate :page=> params['page'], :per_page=>30
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @germinacao_taxa = GerminacaoTaxa.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
    end
  end
  
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
      redirect_to [:admin, @germinacao_taxa], notice: 'GerminacaoTaxa criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @germinacao_taxa = GerminacaoTaxa.find(params[:id])
    if @germinacao_taxa.update_attributes(params[:germinacao_taxa])
      redirect_to [:admin, @germinacao_taxa], notice: 'Germinacao Taxa alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @germinacao_taxa = GerminacaoTaxa.find(params[:id])
    @germinacao_taxa.destroy
    redirect_to admin_germinacao_taxas_url
  end
  
end
end



