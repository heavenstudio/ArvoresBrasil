module Admin
class RaizesController < BaseController
  def index
    @raizes = Raiz.order('nome').paginate :page=> params['page'], :per_page=>30
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def new
    @raiz = Raiz.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @raiz = Raiz.find(params[:id])
  end
  
  def create
    @raiz = Raiz.new(params[:raiz])
    if @raiz.save
      redirect_to admin_raizes_url, notice: 'Raiz criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @raiz = Raiz.find(params[:id])
    if @raiz.update_attributes(params[:raiz])
      redirect_to [:admin, @raiz], notice: 'Raiz alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @raiz = Raiz.find(params[:id])
    @raiz.destroy
    redirect_to admin_raizes_url
  end
  
end
end



