class ArvoresController < ApplicationController
  def index
    @arvores = Arvore.all
  end

  def show
    @arvores = Arvore.find(params[:id])
  end
end
