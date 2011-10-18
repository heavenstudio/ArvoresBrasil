module Admin
class FolhaCiclosController < BaseController
  # GET /folha_ciclos
  # GET /folha_ciclos.json
  def index
    @folha_ciclos = FolhaCiclo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @folha_ciclos }
    end
  end

  # GET /folha_ciclos/1
  # GET /folha_ciclos/1.json
  def show
    @folha_ciclo = FolhaCiclo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @folha_ciclo }
    end
  end

  # GET /folha_ciclos/new
  # GET /folha_ciclos/new.json
  def new
    @folha_ciclo = FolhaCiclo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @folha_ciclo }
    end
  end

  # GET /folha_ciclos/1/edit
  def edit
    @folha_ciclo = FolhaCiclo.find(params[:id])
  end

  # POST /folha_ciclos
  # POST /folha_ciclos.json
  def create
    @folha_ciclo = FolhaCiclo.new(params[:folha_ciclo])

    respond_to do |format|
      if @folha_ciclo.save
        format.html { redirect_to admin_folha_ciclos_url, notice: 'Folha ciclo was successfully created.' }
        format.json { render json: @folha_ciclo, status: :created, location: @folha_ciclo }
      else
        format.html { render action: "new" }
        format.json { render json: @folha_ciclo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /folha_ciclos/1
  # PUT /folha_ciclos/1.json
  def update
    @folha_ciclo = FolhaCiclo.find(params[:id])

    respond_to do |format|
      if @folha_ciclo.update_attributes(params[:folha_ciclo])
        format.html { redirect_to @folha_ciclo, notice: 'Folha ciclo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @folha_ciclo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /folha_ciclos/1
  # DELETE /folha_ciclos/1.json
  def destroy
    @folha_ciclo = FolhaCiclo.find(params[:id])
    @folha_ciclo.destroy

    respond_to do |format|
      format.html { redirect_to folha_ciclos_url }
      format.json { head :ok }
    end
  end
end
end
