class ElementsController < ApplicationController
  def index
    @elements = Element.all
  end

  def new
    @element = Element.new
  end

  def create
    Element.create element_params
    redirect_to elements_path
  end

  def edit
    @element = Element.find params[:id]
  end

  def update
    @element = Element.find params[:id]
    @element.update_attributes element_params
    redirect_to edit_element_path(@element)
  end

  def destroy
    Element.find(params[:id]).destroy!
    redirect_to elements_path
  end

  private
  def element_params
    params.require(:element).permit(:name, :selector_type, :selector_value)
  end
end
