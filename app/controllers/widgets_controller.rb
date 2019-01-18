class WidgetsController < ApplicationController
  
  def index
    @widgets = Widget.all
  end

  def new
    @widget = Widget.new
  end

  def create
    @widget = Widget.new(params.require(:widget).permit(:description, :quantity))
    if (@widget.save)
      redirect_to widgets_path
    end
  end

  def destroy
    Widget.destroy(params[:id])
    redirect_to root_path
  end

end
