class PastSituationsController < ApplicationController
  before_action :set_past_situation, only: [:show, :edit, :update, :destroy]

  # GET /past_situations
  # GET /past_situations.json
  def index
    @past_situations = PastSituation.all
  end

  # GET /past_situations/1
  # GET /past_situations/1.json
  def show
  end

  # GET /past_situations/new
  def new
    @past_situation = PastSituation.new
  end

  # GET /past_situations/1/edit
  def edit
  end

  # POST /past_situations
  # POST /past_situations.json
  def create
    @past_situation = PastSituation.new(past_situation_params)

    respond_to do |format|
      if @past_situation.save
        format.html { redirect_to @past_situation, notice: 'Past situation was successfully created.' }
        format.json { render :show, status: :created, location: @past_situation }
      else
        format.html { render :new }
        format.json { render json: @past_situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /past_situations/1
  # PATCH/PUT /past_situations/1.json
  def update
    respond_to do |format|
      if @past_situation.update(past_situation_params)
        format.html { redirect_to @past_situation, notice: 'Past situation was successfully updated.' }
        format.json { render :show, status: :ok, location: @past_situation }
      else
        format.html { render :edit }
        format.json { render json: @past_situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /past_situations/1
  # DELETE /past_situations/1.json
  def destroy
    @past_situation.destroy
    respond_to do |format|
      format.html { redirect_to past_situations_url, notice: 'Past situation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_past_situation
      @past_situation = PastSituation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def past_situation_params
      params.require(:past_situation).permit(:description, :user_id)
    end
end
