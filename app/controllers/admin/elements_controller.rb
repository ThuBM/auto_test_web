module Admin
  class ElementsController < Admin::BaseController
    def index
      @elements = Element.all
    end

    def new
      @element = Element.new
    end

    def create
      Element.create element_params
      redirect_to admin_elements_path
    end

    def edit
      @element = Element.find params[:id]
    end

    def update
      @element = Element.find params[:id]
      @element.update_attributes element_params
      redirect_to edit_admin_element_path(@element)
    end

    def destroy
      Element.find(params[:id]).destroy!
      redirect_to admin_elements_path
    end

    private
    def element_params
      params.require(:element).permit(:name, :selector_type, :selector_value)
    end
  end
end
