class ListsController < ApplicationController

    def index 
        @lists = List.all
    end 

    def show
        @list = List.find(params[:id])
    end 

    def new
        @list = List.new
        2.times { @list.items.build}
    end 

    def create 
        @list = List.create(list_params)
        redirect_to list_path(@list)
    end 

    private

    def list_params
        params.require(:list).permit(:name, items_attributes: [:name, :quantity])
    end

end
