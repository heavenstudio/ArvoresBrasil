module Admin
class CondicoesController < BaseController
  def index
    @condicoes = Condicao.order("condicao_tipo_id")
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @condicao = Condicao.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @condicao = Condicao.find(params[:id])
  end

  def create
    @condicao = Condicao.new(params[:condicao])
    if @condicao.save
      redirect_to admin_condicoes_url, notice: 'Condicao criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @condicao = Condicao.find(params[:id])
    if @condicao.update_attributes(params[:condicao])
      redirect_to [:admin, @condicao], notice: 'Condicao alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @condicao = Condicao.find(params[:id])
    @condicao.destroy
    redirect_to admin_condicoes_url
  end

end
end





