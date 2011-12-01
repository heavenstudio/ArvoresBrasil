module Admin
class EstadosController < BaseController
  def index
    @estados = Estado.order('nome').paginate :page=> params['page'], :per_page=>30
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def new
    @estado = Estado.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @estado = Estado.find(params[:id])
  end
  
  def create
    @estado = Estado.new(params[:estado])
    if @estado.save
      redirect_to admin_estados_url, notice: 'Estado criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @estado = Estado.find(params[:id])
    if @estado.update_attributes(params[:estado])
      redirect_to [:admin, @estado], notice: 'Estado alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @estado = Estado.find(params[:id])
    @estado.destroy
    redirect_to admin_estados_url
  end
  
end
end



