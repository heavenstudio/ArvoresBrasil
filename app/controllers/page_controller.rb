class PageController < ApplicationController
  def index
    if params[:id] && template_exists?(params[:id], ["page"])
      render params[:id]
    else
      redirect_to '/404.html', :status => 404
    end
  end
end
