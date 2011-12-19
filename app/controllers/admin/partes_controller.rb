module Admin
class PartesController < BaseController
  def index
    @partes = Parte.order('nome')
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def new
    @parte = Parte.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @parte = Parte.find(params[:id])
  end
  
  def create
    @parte = Parte.new(params[:parte])
    if @parte.save
      redirect_to admin_partes_url, notice: 'Parte criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @parte = Parte.find(params[:id])
    if @parte.update_attributes(params[:parte])
      redirect_to [:admin, @parte], notice: 'Parte alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @parte = Parte.find(params[:id])
    @parte.destroy
    redirect_to admin_partes_url
  end
  
end
end



