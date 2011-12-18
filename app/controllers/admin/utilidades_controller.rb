module Admin
class UtilidadesController < BaseController
  def index
    @utilidades = Utilidade.order('nome')
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def new
    @utilidade = Utilidade.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @utilidade = Utilidade.find(params[:id])
  end
  
  def create
    @utilidade = Utilidade.new(params[:utilidade])
    if @utilidade.save
      redirect_to admin_utilidades_url, notice: 'Utilidade criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @utilidade = Utilidade.find(params[:id])
    if @utilidade.update_attributes(params[:utilidade])
      redirect_to [:admin, @utilidade], notice: 'Utilidade alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @utilidade = Utilidade.find(params[:id])
    @utilidade.destroy
    redirect_to admin_utilidades_url
  end
  
end
end



