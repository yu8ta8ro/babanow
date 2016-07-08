class BabasController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @babas = Baba.order('id DESC').page(params[:page]).per(6)
    phrase = ["#ばばなう","#たかだのばば","#ばば歩き"]
    random = rand(3)
    @keyword = phrase[random]
  end

  def new
    @baba = Baba.new
  end

  def create
    Baba.create(create_params)
    redirect_to action: :index
  end

  private
  def create_params
    params.require(:baba).permit(:title, :concept)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
