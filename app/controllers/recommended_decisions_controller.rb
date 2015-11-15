class RecommendedDecisionsController < ApplicationController
  before_action :set_recommended_decision, only: [:show, :edit, :update, :destroy]

  # GET /recommended_decisions
  # GET /recommended_decisions.json
  def index
    @recommended_decisions = RecommendedDecision.all
  end

  # GET /recommended_decisions/1
  # GET /recommended_decisions/1.json
  def show
  end

  # GET /recommended_decisions/new
  def new
    @recommended_decision = RecommendedDecision.new
  end

  # GET /recommended_decisions/1/edit
  def edit
  end

  # POST /recommended_decisions
  # POST /recommended_decisions.json
  def create
    @recommended_decision = RecommendedDecision.new(recommended_decision_params)

    respond_to do |format|
      if @recommended_decision.save
        format.html { redirect_to @recommended_decision, notice: 'Recommended decision was successfully created.' }
        format.json { render :show, status: :created, location: @recommended_decision }
      else
        format.html { render :new }
        format.json { render json: @recommended_decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recommended_decisions/1
  # PATCH/PUT /recommended_decisions/1.json
  def update
    respond_to do |format|
      if @recommended_decision.update(recommended_decision_params)
        format.html { redirect_to @recommended_decision, notice: 'Recommended decision was successfully updated.' }
        format.json { render :show, status: :ok, location: @recommended_decision }
      else
        format.html { render :edit }
        format.json { render json: @recommended_decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recommended_decisions/1
  # DELETE /recommended_decisions/1.json
  def destroy
    @recommended_decision.destroy
    respond_to do |format|
      format.html { redirect_to recommended_decisions_url, notice: 'Recommended decision was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recommended_decision
      @recommended_decision = RecommendedDecision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recommended_decision_params
      params.require(:recommended_decision).permit(:content)
    end
end
