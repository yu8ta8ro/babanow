class BabasController < ApplicationController
  def index
    @babas = Baba.order('id DESC').page(params[:page]).per(6)
  end
end
