module Admin
  class LivrosController < BaseController
    def index
      @livros = Livro.order('nome').paginate :page=> params['page'], :per_page=>30
      respond_to do |format|
        format.html # index.html.erb
      end
    end

    def new
      @livro = Livro.new
      respond_to do |format|
        format.html # index.html.erb
      end
    end

    def edit
      @livro = Livro.find(params[:id])
    end

    def create
      @livro = Livro.new(params[:livro])
      if @livro.save
        redirect_to admin_livros_url, notice: 'Livro criado com sucesso.'
      else
        render action: "new"
      end
    end

    def update
      @livro = Livro.find(params[:id])
      if @livro.update_attributes(params[:livro])
        redirect_to [:admin, @livro], notice: 'Livro alterado com sucesso.'
      else
        render action: "edit"
      end
    end

    def destroy
      @livro = Livro.find(params[:id])
      @livro.destroy
      redirect_to admin_livros_url
    end

  end
end
