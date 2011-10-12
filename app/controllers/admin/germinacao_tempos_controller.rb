module Admin
class GerminacaoTemposController < BaseController
  def index
    @germinacao_tempos = GerminacaoTempo.order('tempo').paginate :page=> params['page'], :per_page=>30
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @germinacao_tempo = GerminacaoTempo.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
    end
  end
  
  def new
    @germinacao_tempo = GerminacaoTempo.new
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @germinacao_tempo = GerminacaoTempo.find(params[:id])
  end
  
  def create
    @germinacao_tempo = GerminacaoTempo.new(params[:germinacao_tempo])
    if @germinacao_tempo.save
      redirect_to [:admin, @germinacao_tempo], notice: 'GerminacaoTempo criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @germinacao_tempo = GerminacaoTempo.find(params[:id])
    if @germinacao_tempo.update_attributes(params[:germinacao_tempo])
      redirect_to [:admin, @germinacao_tempo], notice: 'Germinacao Tempo alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @germinacao_tempo = GerminacaoTempo.find(params[:id])
    @germinacao_tempo.destroy
    redirect_to admin_germinacao_tempos_url
  end
  
end
end



