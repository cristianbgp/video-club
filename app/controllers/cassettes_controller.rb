class CassettesController < ApplicationController
  before_action :set_cassette, only: [:show, :edit, :update, :destroy]

  # GET /cassettes
  # GET /cassettes.json
  def index
    @cassettes = Cassette.all
  end

  # GET /cassettes/1
  # GET /cassettes/1.json
  def show
  end

  # GET /cassettes/new
  def new
    @cassette = Cassette.new
  end

  # GET /cassettes/1/edit
  def edit
  end

  # POST /cassettes
  # POST /cassettes.json
  def create
    @cassette = Cassette.new(cassette_params)

    respond_to do |format|
      if @cassette.save
        format.html { redirect_to @cassette, notice: 'Cassette was successfully created.' }
        format.json { render :show, status: :created, location: @cassette }
      else
        format.html { render :new }
        format.json { render json: @cassette.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cassettes/1
  # PATCH/PUT /cassettes/1.json
  def update
    respond_to do |format|
      if @cassette.update(cassette_params)
        format.html { redirect_to @cassette, notice: 'Cassette was successfully updated.' }
        format.json { render :show, status: :ok, location: @cassette }
      else
        format.html { render :edit }
        format.json { render json: @cassette.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cassettes/1
  # DELETE /cassettes/1.json
  def destroy
    @cassette.destroy
    respond_to do |format|
      format.html { redirect_to cassettes_url, notice: 'Cassette was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cassette
      @cassette = Cassette.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cassette_params
      params.require(:cassette).permit(:movie_id, :formato_id)
    end
end
