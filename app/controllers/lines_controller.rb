class LinesController < ApplicationController
  def index
    @lines = Line.all
  end

  def show
    @line = Line.find(params[:id])
  end

  def new
    @line = Line.new
  end

  def edit
    @line = Line.find(params[:id])
  end

 def create
   @line = Line.new(line_params)

  if @line.save
    redirect_to @line
  else
    render 'new'
  end
 end

def update
 @line = Line.find(params[:id])

 if @line.update(line_params)
   redirect_to @line
 else
   render 'edit'
 end
end

def destroy
  @line = Line.find(params[:id])
  @line.destroy

  redirect_to lines_path
end

private
  def line_params
    params.require(:line).permit(:order_id,:game_id,:quantita,:prezzo)
  end
end
