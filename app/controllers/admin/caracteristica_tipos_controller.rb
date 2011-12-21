module Admin
class CaracteristicaTiposController  < BaseController
  def index
    @caracteristica_tipos = CaracteristicaTipo.order('nome')
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def new
    @caracteristica_tipo = CaracteristicaTipo.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @caracteristica_tipo = CaracteristicaTipo.find(params[:id])
  end
  
  def create
    @caracteristica_tipo = CaracteristicaTipo.new(params[:caracteristica_tipo])
    if @caracteristica_tipo.save
      redirect_to admin_caracteristica_tipos_url, notice: 'CaracteristicaTipo criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @caracteristica_tipo = CaracteristicaTipo.find(params[:id])
    if @caracteristica_tipo.update_attributes(params[:caracteristica_tipo])
      redirect_to [:admin, @caracteristica_tipo], notice: 'CaracteristicaTipo alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @caracteristica_tipo = CaracteristicaTipo.find(params[:id])
    @caracteristica_tipo.destroy
    redirect_to admin_caracteristica_tipos_url
  end
  
end
end

