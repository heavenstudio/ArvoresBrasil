module Admin
class PopularesController < BaseController
  def index
    @populares = Popular.order('nome').paginate :page=> params['page'], :per_page=>30
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @popular = Popular.find(params[:id])
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @popular = Popular.new
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def edit
    @popular = Popular.find(params[:id])
  end
  
  def create
    @popular = Popular.new(params[:popular])
    if @popular.save
      redirect_to [:admin, @popular], notice: 'Popular criado com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @popular = Popular.find(params[:id])
    if @popular.update_attributes(params[:popular])
      redirect_to [:admin, @popular], notice: 'Popular alterado com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @popular = Popular.find(params[:id])
    @popular.destroy
    redirect_to admin_populares_url
  end

end
end