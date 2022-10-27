class SscoresController < ApplicationController
  before_action :set_sscore, only: %i[ show edit update destroy ]

  # GET /sscores or /sscores.json
  def index
    @sscores = Sscore.all
  end

  # GET /sscores/1 or /sscores/1.json
  def show
  end

  # GET /sscores/new
  def new
    @sscore = Sscore.new
  end

  # GET /sscores/1/edit
  def edit
  end

  # POST /sscores or /sscores.json
  def create
    @sscore = Sscore.new(sscore_params)

    respond_to do |format|
      if @sscore.save
        format.html { redirect_to sscore_url(@sscore), notice: "Sscore was successfully created." }
        format.json { render :show, status: :created, location: @sscore }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sscores/1 or /sscores/1.json
  def update
    respond_to do |format|
      if @sscore.update(sscore_params)
        format.html { redirect_to sscore_url(@sscore), notice: "Sscore was successfully updated." }
        format.json { render :show, status: :ok, location: @sscore }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sscore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sscores/1 or /sscores/1.json
  def destroy
    @sscore.destroy

    respond_to do |format|
      format.html { redirect_to sscores_url, notice: "Sscore was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sscore
      @sscore = Sscore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sscore_params
      params.require(:sscore).permit(:subject, :point, :grade, :student_id)
    end
end
