class ItemsController < ApplicationController
  
  def create
  	@improvement = Improvement.find(params[:improvement_id])	
    @item = @improvement.items.create(item_params)
    redirect_to project_improvement_path(params[:project_id], @improvement), notice: 'Improvement was successfully created.'
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @improvement = Improvement.find(params[:improvement_id])	
      @item = @improvement.items.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:description, :state_id)
    end
end
