module Admin
class UtilidadeTiposController < BaseController
  def index
    @utilidade_tipos = UtilidadeTipo.order('nome')
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def new
    @utilidade_tipo = UtilidadeTipo.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @utilidade_tipo = UtilidadeTipo.find(params[:id])
  end
  
  def create
    @utilidade_tipo = UtilidadeTipo.new(params[:utilidade_tipo])
    if @utilidade_tipo.save
      redirect_to admin_utilidade_tipos_url, notice: 'UtilidadeTipo criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @utilidade_tipo = UtilidadeTipo.find(params[:id])
    if @utilidade_tipo.update_attributes(params[:utilidade_tipo])
      redirect_to [:admin, @utilidade_tipo], notice: 'UtilidadeTipo alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @utilidade_tipo = UtilidadeTipo.find(params[:id])
    @utilidade_tipo.destroy
    redirect_to admin_utilidade_tipos_url
  end
  
end
end

