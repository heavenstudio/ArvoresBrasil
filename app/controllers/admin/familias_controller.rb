module Admin
class FamiliasController < BaseController
  def index
    #@familias = Familia.order('nome').paginate :page=> params['page'], :per_page=>14
    @familias = Familia.search(params[:search]).paginate :page=> params['page'], :per_page=>14
  end
  
  def new
    @familia = Familia.new
  end

  def edit
    @familia = Familia.find(params[:id])
  end
  
  def create
    @familia = Familia.new(params[:familia])
    if @familia.save
      redirect_to admin_familias_url, notice: 'Familia criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @familia = Familia.find(params[:id])
    if @familia.update_attributes(params[:familia])
      redirect_to [:admin, @familia], notice: 'Familia alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @familia = Familia.find(params[:id])
    @familia.destroy
    redirect_to admin_familias_url
  end
  
end
end



