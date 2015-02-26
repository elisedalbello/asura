class ImprovementsController < ApplicationController
  before_action :set_improvement, only: [:show, :edit, :update, :destroy]

  def index
    @improvements = Improvement.all
  end

  def show
  end

  def new
    @improvement = Improvement.new
  end

  def edit
  end

  def create
    @project = Project.find(params[:project_id])
    @improvement = @project.improvements.create(improvement_params)
    redirect_to @project, notice: 'Improvement was successfully created.'
  end

  # PATCH/PUT /improvements/1
  # PATCH/PUT /improvements/1.json
  def update
    respond_to do |format|
      if @improvement.update(improvement_params)
        format.html { redirect_to @improvement, notice: 'Improvement was successfully updated.' }
        format.json { render :show, status: :ok, location: @improvement }
      else
        format.html { render :edit }
        format.json { render json: @improvement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /improvements/1
  # DELETE /improvements/1.json
  def destroy
    @improvement.destroy
    respond_to do |format|
      format.html { redirect_to improvements_url, notice: 'Improvement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_improvement
      @improvement = Improvement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def improvement_params
      params.require(:improvement).permit(:name)
    end
end
