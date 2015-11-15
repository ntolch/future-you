class UserDecisionsController < ApplicationController
  before_action :set_user_decision, only: [:show, :edit, :update, :destroy]

  # GET /user_decisions
  # GET /user_decisions.json
  def index
    @user_decisions = UserDecision.all
  end

  # GET /user_decisions/1
  # GET /user_decisions/1.json
  def show
  end

  # GET /user_decisions/new
  def new
    @user_decision = UserDecision.new
  end

  # GET /user_decisions/1/edit
  def edit
  end

  # POST /user_decisions
  # POST /user_decisions.json
  def create
    @user_decision = UserDecision.new(user_decision_params)

    respond_to do |format|
      if @user_decision.save
        format.html { redirect_to @user_decision, notice: 'User decision was successfully created.' }
        format.json { render :show, status: :created, location: @user_decision }
      else
        format.html { render :new }
        format.json { render json: @user_decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_decisions/1
  # PATCH/PUT /user_decisions/1.json
  def update
    respond_to do |format|
      if @user_decision.update(user_decision_params)
        format.html { redirect_to @user_decision, notice: 'User decision was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_decision }
      else
        format.html { render :edit }
        format.json { render json: @user_decision.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_decisions/1
  # DELETE /user_decisions/1.json
  def destroy
    @user_decision.destroy
    respond_to do |format|
      format.html { redirect_to user_decisions_url, notice: 'User decision was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_decision
      @user_decision = UserDecision.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_decision_params
      params.require(:user_decision).permit(:choice)
    end
end
