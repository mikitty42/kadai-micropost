class MicropostsController < ApplicationController
  before_action :set_micropost, only: [:show,:edit,:update,:destroy]

  def index
    @microposts = Micropost.all
  end

  def new
    @micropost = Micropost.new
  end

  def create
    @micropost = Micropost.new(micropost_params)
    if params[:back]
      render :new
    else
      if @micropost.save
        redirect_to microposts_path,notice: "メッセージを作成しました!"
      else
        render :new
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @micropost.update
      redirect_to microposts_path,notice: "メッセージを更新しました!"
    end
  end

  def destroy
    @blog.destroy
    redirect_to microposts_path, notice: "メッセージを削除しました!"
  end

  def confirm
    @micropost = Micropost.new(micropost_params)
    render :new if @micropost.invalid?
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content)
  end

  def set_micropost
    @micropost = Micropost.find(params[:id])
  end
end
