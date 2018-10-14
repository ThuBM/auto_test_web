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

  private
  def element_params
    params.require(:element).permit(:name, :selector_type, :selector_value)
  end
end
