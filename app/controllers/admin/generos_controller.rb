module Admin
class GenerosController < BaseController
  def index
    @generos = Genero.order('nome').paginate :page=> params['page'], :per_page=>30
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def new
    @genero = Genero.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @genero = Genero.find(params[:id])
  end
  
  def create
    @genero = Genero.new(params[:genero])
    if @genero.save
      redirect_to admin_generos_url, notice: 'Genero criado com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @genero = Genero.find(params[:id])
    if @genero.update_attributes(params[:genero])
      redirect_to [:admin, @genero], notice: 'Genero alterado com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @genero = Genero.find(params[:id])
    @genero.destroy
    redirect_to admin_generos_url
  end
  
end
end



