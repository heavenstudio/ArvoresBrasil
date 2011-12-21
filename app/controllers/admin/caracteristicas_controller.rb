module Admin
class CaracteristicasController < BaseController
  def index
    @caracteristicas = Caracteristica.order("caracteristica_tipo_id")
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def new
    @caracteristica = Caracteristica.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @caracteristica = Caracteristica.find(params[:id])
  end
  
  def create
    @caracteristica = Caracteristica.new(params[:caracteristica])
    if @caracteristica.save
      redirect_to admin_caracteristicas_url, notice: 'Caracteristica criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @caracteristica = Caracteristica.find(params[:id])
    if @caracteristica.update_attributes(params[:caracteristica])
      redirect_to [:admin, @caracteristica], notice: 'Caracteristica alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @caracteristica = Caracteristica.find(params[:id])
    @caracteristica.destroy
    redirect_to admin_caracteristicas_url
  end
  
end
end



