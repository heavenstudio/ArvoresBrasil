module Admin
class CrescimentosController < BaseController
  def index
    @crescimentos = Crescimento.order('nome').paginate :page=> params['page'], :per_page=>30
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @crescimento = Crescimento.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
    end
  end
  
  def new
    @crescimento = Crescimento.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @crescimento = Crescimento.find(params[:id])
  end
  
  def create
    @crescimento = Crescimento.new(params[:crescimento])
    if @crescimento.save
      redirect_to admin_crescimentos_url, notice: 'Crescimento criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @crescimento = Crescimento.find(params[:id])
    if @crescimento.update_attributes(params[:crescimento])
      redirect_to [:admin, @crescimento], notice: 'Crescimento alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @crescimento = Crescimento.find(params[:id])
    @crescimento.destroy
    redirect_to admin_crescimentos_url
  end
  
end
end



