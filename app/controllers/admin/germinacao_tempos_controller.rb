module Admin
class GerminacaoTemposController < BaseController

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
      redirect_to admin_germinacoes_url, notice: 'GerminacaoTempo criada com sucesso.'
    else
      render action: "new"
    end
  end

  def update
    @germinacao_tempo = GerminacaoTempo.find(params[:id])
    if @germinacao_tempo.update_attributes(params[:germinacao_tempo])
      redirect_to [:admin, @germinacoes], notice: 'Germinacao Tempo alterada com sucesso.'
    else
      render action: "edit"
    end
  end

  def destroy
    @germinacao_tempo = GerminacaoTempo.find(params[:id])
    @germinacao_tempo.destroy
    redirect_to admin_germinacoes_url
  end
  
end
end



