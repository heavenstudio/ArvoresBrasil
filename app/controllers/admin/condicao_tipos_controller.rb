module Admin
class CondicaoTiposController   < BaseController
  def index
    @condicao_tipos = CondicaoTipo.order('nome')
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @condicao_tipo = CondicaoTipo.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @condicao_tipo = CondicaoTipo.find(params[:id])
  end

  def create
    @condicao_tipo = CondicaoTipo.new(params[:condicao_tipo])
    if @condicao_tipo.save
      redirect_to admin_condicao_tipos_url, notice: 'CondicaoTipo criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @condicao_tipo = CondicaoTipo.find(params[:id])
    if @condicao_tipo.update_attributes(params[:condicao_tipo])
      redirect_to [:admin, @condicao_tipo], notice: 'CondicaoTipo alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @condicao_tipo = CondicaoTipo.find(params[:id])
    @condicao_tipo.destroy
    redirect_to admin_condicao_tipos_url
  end

end
end

