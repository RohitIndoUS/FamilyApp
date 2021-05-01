class FamilymembersController < ApplicationController
  before_action :set_familymember, only: %i[ show edit update destroy ]

  # GET /familymembers or /familymembers.json
  def index
    @familymembers = Familymember.all
  end

  # GET /familymembers/1 or /familymembers/1.json
  def show
  end

  # GET /familymembers/new
  def new
    @familymember = Familymember.new
  end

  # GET /familymembers/1/edit
  def edit
  end

  # POST /familymembers or /familymembers.json
  def create
    @familymember = Familymember.new(familymember_params)

    respond_to do |format|
      if @familymember.save
        format.html { redirect_to @familymember, notice: "Familymember was successfully created." }
        format.json { render :show, status: :created, location: @familymember }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @familymember.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /familymembers/1 or /familymembers/1.json
  def update
    respond_to do |format|
      if @familymember.update(familymember_params)
        format.html { redirect_to @familymember, notice: "Familymember was successfully updated." }
        format.json { render :show, status: :ok, location: @familymember }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @familymember.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /familymembers/1 or /familymembers/1.json
  def destroy
    @familymember.destroy
    respond_to do |format|
      format.html { redirect_to familymembers_url, notice: "Familymember was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_familymember
        @familymember = Familymember.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def familymember_params
      params.require(:familymember).permit(:name, :gender, :age, :address)
    end
end
