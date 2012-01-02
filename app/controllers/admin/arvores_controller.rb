module Admin
class ArvoresController < BaseController
  def index
    @arvores = Arvore.order('id').paginate :page=> params['page'], :per_page=>24
    #@arvores = Arvore.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @arvore = Arvore.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
    end
  end
  
  def new
    @arvore = Arvore.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @arvore = Arvore.find(params[:id])
  end
  
  def create
    @arvore = Arvore.new(params[:arvore])
    if @arvore.save
      redirect_to admin_arvore_url, notice: 'Arvore criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @arvore = Arvore.find(params[:id])
    if @arvore.update_attributes(params[:arvore])
      redirect_to [:admin, @arvore], notice: 'Arvore alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @arvore = Arvore.find(params[:id])
    @arvore.destroy
    redirect_to admin_arvores_url
  end
  
end
end



