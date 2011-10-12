module Admin
class PaisesController < BaseController
  def index
    @paises = Pais.order('nome')
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @pais = Pais.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
    end
  end
  
  def new
    @pais = Pais.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @pais = Pais.find(params[:id])
  end
  
  def create
    @pais = Pais.new(params[:pais])
    if @pais.save
      redirect_to [:admin, @pais], notice: 'Pais criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @pais = Pais.find(params[:id])
    if @pais.update_attributes(params[:pais])
      redirect_to [:admin, @pais], notice: 'Pais alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @pais = Pais.find(params[:id])
    @pais.destroy
    redirect_to admin_paises_url
  end
  
end
end

