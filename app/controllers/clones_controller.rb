class ClonesController < ApplicationController
  before_action :set_clone, only: [:edit, :update, :destroy]

  def home
  end

  def index
    @clones = Clone.all
  end

  def new
    if params[:back]
      @clone = Clone.new(clone_params)
    else
      @clone = Clone.new
    end
  end
  
  def create
    @clone = Clone.create(clone_params) 
    if @clone.save
      redirect_to clones_path
    else
      render 'new'
    end
  end
  
  def edit
    set_clone
  end
  
  def update
    set_clone
    if @clone.update(clone_params)
      redirect_to clones_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end
  
  def destroy
    @clone.destroy
    redirect_to clones_path, notice:"つぶやき削除しました！"
  end

  def confirm
    @clone = Clone.new(clone_params)
    render :new if @clone.invalid?
  end
  
  private
  def clone_params
    params.require(:clone).permit(:content)
  end
  
  def set_clone
    @clone = Clone.find(params[:id])
  end
  
end
