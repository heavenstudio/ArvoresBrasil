module Admin
class ArvoresController < BaseController
  def index
    #@arvores = Arvore.order('id').paginate :page=> params['page'], :per_page=>24
    #@arvores = Arvore.find(:all, :from => :nomes_populares, :params => { :nome => 'pau-brasil' })
    
    @arvores = Arvore.search(params[:searchNomePopular]).paginate :page=> params['page'], :per_page=>24
  end

  def show
    @arvore = Arvore.find(params[:id])
  end
  
  def new
    @arvore = Arvore.new
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



