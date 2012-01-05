module Admin
class ProdutoTiposController  < BaseController
  def index
    @produto_tipos = ProdutoTipo.order('nome')
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @produto_tipo = ProdutoTipo.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @produto_tipo = ProdutoTipo.find(params[:id])
  end

  def create
    @produto_tipo = ProdutoTipo.new(params[:produto_tipo])
    if @produto_tipo.save
      redirect_to admin_produto_tipos_url, notice: 'ProdutoTipo criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @produto_tipo = ProdutoTipo.find(params[:id])
    if @produto_tipo.update_attributes(params[:produto_tipo])
      redirect_to [:admin, @produto_tipo], notice: 'ProdutoTipo alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @produto_tipo = ProdutoTipo.find(params[:id])
    @produto_tipo.destroy
    redirect_to admin_produto_tipos_url
  end

end
end

