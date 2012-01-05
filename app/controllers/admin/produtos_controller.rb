module Admin
class ProdutosController < BaseController
  def index
    @produtos = Produto.order("produto_tipo_id")
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @produto = Produto.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @produto = Produto.find(params[:id])
  end

  def create
    @produto = Produto.new(params[:produto])
    if @produto.save
      redirect_to admin_produtos_url, notice: 'Produto criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @produto = Produto.find(params[:id])
    if @produto.update_attributes(params[:produto])
      redirect_to [:admin, @produto], notice: 'Produto alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy
    redirect_to admin_produtos_url
  end

end
end




