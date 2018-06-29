class UtentsController < ApplicationController
    http_basic_authenticate_with name: "tooks", password: "818"
  def index
    @utents = Utent.all
  end

  def show
    @utent = Utent.find(params[:id])
  end

  def new
    @utent = Utent.new
  end

  def edit
    @utent = Utent.find(params[:id])
  end

 def create
   @utent = Utent.new(utent_params)

  if @utent.save
    redirect_to @utent
  else
    render 'new'
  end
 end

def update
 @utent = Utent.find(params[:id])

 if @utent.update(utent_params)
   redirect_to @utent
 else
   render 'edit'
 end
end

def destroy
  @utent = Utent.find(params[:id])
  @utent.destroy

  redirect_to utents_path
end

private
  def utent_params
    params.require(:utent).permit(:email,:password)
  end
end
