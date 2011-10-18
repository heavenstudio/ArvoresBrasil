module Admin
class ExtincoesController < BaseController
  def index
    @extincoes = Extincao.order('grau')
    respond_to do |format|
      format.html # index.html.erb
    end
  end
  
  def new
    @extincao = Extincao.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @extincao = Extincao.find(params[:id])
  end
  
  def create
    @extincao = Extincao.new(params[:extincao])
    if @extincao.save
      redirect_to admin_extincoes_url, notice: 'Extincao criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @extincao = Extincao.find(params[:id])
    if @extincao.update_attributes(params[:extincao])
      redirect_to [:admin, @extincao], notice: 'Extincao alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @extincao = Extincao.find(params[:id])
    @extincao.destroy
    redirect_to admin_extincoes_url
  end
  
end
end


