class PeepsController < ApplicationController
  before_action :set_peep, only: [:show, :edit, :update, :destroy]

  # GET /peeps
  # GET /peeps.json
  def index
    @peeps = Peep.all
  end

  # GET /peeps/1
  # GET /peeps/1.json
  def show
  end

  # GET /peeps/new
  def new
    @peep = Peep.new
  end

  # GET /peeps/1/edit
  def edit
  end

  # POST /peeps
  # POST /peeps.json
  def create
    @peep = Peep.new(peep_params)

    respond_to do |format|
      if @peep.save
        format.html { redirect_to @peep, notice: 'Peep was successfully created.' }
        format.json { render action: 'show', status: :created, location: @peep }
      else
        format.html { render action: 'new' }
        format.json { render json: @peep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peeps/1
  # PATCH/PUT /peeps/1.json
  def update
    respond_to do |format|
      if @peep.update(peep_params)
        format.html { redirect_to @peep, notice: 'Peep was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @peep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peeps/1
  # DELETE /peeps/1.json
  def destroy
    @peep.destroy
    respond_to do |format|
      format.html { redirect_to peeps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peep
      @peep = Peep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peep_params
      params.require(:peep).permit(:name, :role)
    end
end
