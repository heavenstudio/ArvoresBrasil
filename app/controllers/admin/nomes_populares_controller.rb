module Admin
class NomesPopularesController < BaseController
  def index
    #@nomes_populares = NomePopular.order('nome').paginate :page=> params['page'], :per_page=>30
    @nomes_populares = NomePopular.order('nome').search(params[:search]).paginate :page=> params['page'], :per_page=>14
  end

  def new
    @nome_popular = NomePopular.new
  end

  def edit
    @nome_popular = NomePopular.find(params[:id])
  end
  
  def create
    @nome_popular = NomePopular.new(params[:nome_popular])
    if @nome_popular.save
      redirect_to admin_nomes_populares_url, notice: 'Nome Popular criado com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @nome_popular = NomePopular.find(params[:id])
    if @nome_popular.update_attributes(params[:nome_popular])
      redirect_to admin_nomes_populares_url, notice: 'Nome Popular alterado com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @nome_popular = NomePopular.find(params[:id])
    @nome_popular.destroy
    redirect_to admin_nomes_populares_url
  end

end
end