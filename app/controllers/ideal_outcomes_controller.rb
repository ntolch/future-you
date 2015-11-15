class IdealOutcomesController < ApplicationController
  before_action :set_ideal_outcome, only: [:show, :edit, :update, :destroy]

  # GET /ideal_outcomes
  # GET /ideal_outcomes.json
  def index
    @ideal_outcomes = IdealOutcome.all
  end

  # GET /ideal_outcomes/1
  # GET /ideal_outcomes/1.json
  def show
  end

  # GET /ideal_outcomes/new
  def new
    @ideal_outcome = IdealOutcome.new
  end

  # GET /ideal_outcomes/1/edit
  def edit
  end

  # POST /ideal_outcomes
  # POST /ideal_outcomes.json
  def create
    @ideal_outcome = IdealOutcome.new(ideal_outcome_params)

    respond_to do |format|
      if @ideal_outcome.save
        format.html { redirect_to @ideal_outcome, notice: 'Ideal outcome was successfully created.' }
        format.json { render :show, status: :created, location: @ideal_outcome }
      else
        format.html { render :new }
        format.json { render json: @ideal_outcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ideal_outcomes/1
  # PATCH/PUT /ideal_outcomes/1.json
  def update
    respond_to do |format|
      if @ideal_outcome.update(ideal_outcome_params)
        format.html { redirect_to @ideal_outcome, notice: 'Ideal outcome was successfully updated.' }
        format.json { render :show, status: :ok, location: @ideal_outcome }
      else
        format.html { render :edit }
        format.json { render json: @ideal_outcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ideal_outcomes/1
  # DELETE /ideal_outcomes/1.json
  def destroy
    @ideal_outcome.destroy
    respond_to do |format|
      format.html { redirect_to ideal_outcomes_url, notice: 'Ideal outcome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ideal_outcome
      @ideal_outcome = IdealOutcome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ideal_outcome_params
      params.require(:ideal_outcome).permit(:new_situation_id, :recommended_decision_id)
    end
end
