class PastOutcomesController < ApplicationController
  before_action :set_past_outcome, only: [:show, :edit, :update, :destroy]

  # GET /past_outcomes
  # GET /past_outcomes.json
  def index
    @past_outcomes = PastOutcome.all
  end

  # GET /past_outcomes/1
  # GET /past_outcomes/1.json
  def show
  end

  # GET /past_outcomes/new
  def new
    @past_outcome = PastOutcome.new
  end

  # GET /past_outcomes/1/edit
  def edit
  end

  # POST /past_outcomes
  # POST /past_outcomes.json
  def create
    @past_outcome = PastOutcome.new(past_outcome_params)

    respond_to do |format|
      if @past_outcome.save
        format.html { redirect_to @past_outcome, notice: 'Past outcome was successfully created.' }
        format.json { render :show, status: :created, location: @past_outcome }
      else
        format.html { render :new }
        format.json { render json: @past_outcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /past_outcomes/1
  # PATCH/PUT /past_outcomes/1.json
  def update
    respond_to do |format|
      if @past_outcome.update(past_outcome_params)
        format.html { redirect_to @past_outcome, notice: 'Past outcome was successfully updated.' }
        format.json { render :show, status: :ok, location: @past_outcome }
      else
        format.html { render :edit }
        format.json { render json: @past_outcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /past_outcomes/1
  # DELETE /past_outcomes/1.json
  def destroy
    @past_outcome.destroy
    respond_to do |format|
      format.html { redirect_to past_outcomes_url, notice: 'Past outcome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_past_outcome
      @past_outcome = PastOutcome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def past_outcome_params
      params.require(:past_outcome).permit(:past_situation_id, :user_decision_id)
    end
end
