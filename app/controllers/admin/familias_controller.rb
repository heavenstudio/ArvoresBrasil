module Admin
class FamiliasController < BaseController
  def index
    @familias = Familia.order('nome').paginate :page=> params['page'], :per_page=>30
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @familia = Familia.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
    end
  end
  
  def new
    @familia = Familia.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @familia = Familia.find(params[:id])
  end
  
  def create
    @familia = Familia.new(params[:familia])
    if @familia.save
      redirect_to [:admin, @familia], notice: 'Familia criada com sucesso.'
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



