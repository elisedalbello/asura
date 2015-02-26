class StatesController < ApplicationController
  def create
  	@improvement = Improvement.find(params[:improvement_id])	
    @state = @improvement.states.create(state_params)
    redirect_to project_improvement_path(params[:project_id], @improvement), notice: 'Improvement was successfully created.'
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @improvement = Improvement.find(params[:improvement_id])	
      @state = @improvement.states.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_params
      params.require(:state).permit(:name)
    end
end
