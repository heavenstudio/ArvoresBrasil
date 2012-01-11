module Admin
class SucessoesController < BaseController
  def index
    @sucessoes = Sucessao.order("id")
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @sucessao = Sucessao.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @sucessao = Sucessao.find(params[:id])
  end

  def create
    @sucessao = Sucessao.new(params[:sucessao])
    if @sucessao.save
      redirect_to admin_sucessoes_url, notice: 'Sucessao criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @sucessao = Sucessao.find(params[:id])
    if @sucessao.update_attributes(params[:sucessao])
      redirect_to [:admin, @sucessao], notice: 'Sucessao alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @sucessao = Sucessao.find(params[:id])
    @sucessao.destroy
    redirect_to admin_sucessoes_url
  end

end
end
