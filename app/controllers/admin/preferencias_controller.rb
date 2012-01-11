module Admin
class PreferenciasController < BaseController
  def index
    @preferencias = Preferencia.order('nome').paginate :page=> params['page'], :per_page=>14
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @preferencia = Preferencia.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @preferencia = Preferencia.find(params[:id])
  end

  def create
    @preferencia = Preferencia.new(params[:preferencia])
    if @preferencia.save
      redirect_to admin_preferencias_url, notice: 'Preferencia criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @preferencia = Preferencia.find(params[:id])
    if @preferencia.update_attributes(params[:preferencia])
      redirect_to [:admin, @preferencia], notice: 'Preferencia alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @preferencia = Preferencia.find(params[:id])
    @preferencia.destroy
    redirect_to admin_preferencias_url
  end

end
end
