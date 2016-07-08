class BabasController < ApplicationController
  def index
    @babas = Baba.order('id DESC').page(params[:page]).per(5)
  end
end
