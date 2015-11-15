class NewSituationsController < ApplicationController
  before_action :set_new_situation, only: [:show, :edit, :update, :destroy]

  # GET /new_situations
  # GET /new_situations.json
  def index
    @new_situations = NewSituation.all
  end

  # GET /new_situations/1
  # GET /new_situations/1.json
  def show
  end

  # GET /new_situations/new
  def new
    @new_situation = NewSituation.new
  end

  # GET /new_situations/1/edit
  def edit
  end

  # POST /new_situations
  # POST /new_situations.json
  def create
    @new_situation = NewSituation.new(new_situation_params)

    respond_to do |format|
      if @new_situation.save
        format.html { redirect_to @new_situation, notice: 'New situation was successfully created.' }
        format.json { render :show, status: :created, location: @new_situation }
      else
        format.html { render :new }
        format.json { render json: @new_situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_situations/1
  # PATCH/PUT /new_situations/1.json
  def update
    respond_to do |format|
      if @new_situation.update(new_situation_params)
        format.html { redirect_to @new_situation, notice: 'New situation was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_situation }
      else
        format.html { render :edit }
        format.json { render json: @new_situation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_situations/1
  # DELETE /new_situations/1.json
  def destroy
    @new_situation.destroy
    respond_to do |format|
      format.html { redirect_to new_situations_url, notice: 'New situation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_situation
      @new_situation = NewSituation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_situation_params
      params.require(:new_situation).permit(:description, :user_id)
    end
end
