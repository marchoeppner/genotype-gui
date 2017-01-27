class ChromosomesController < ApplicationController
  before_action :set_chromosome, only: [:show, :edit, :update, :destroy]

  # GET /chromosomes
  # GET /chromosomes.json
  def index
    @chromosomes = Chromosome.all
  end

  # GET /chromosomes/1
  # GET /chromosomes/1.json
  def show
  end

  # GET /chromosomes/new
  def new
    @chromosome = Chromosome.new
  end

  # GET /chromosomes/1/edit
  def edit
  end

  # POST /chromosomes
  # POST /chromosomes.json
  def create
    @chromosome = Chromosome.new(chromosome_params)

    respond_to do |format|
      if @chromosome.save
        format.html { redirect_to @chromosome, notice: 'Chromosome was successfully created.' }
        format.json { render :show, status: :created, location: @chromosome }
      else
        format.html { render :new }
        format.json { render json: @chromosome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chromosomes/1
  # PATCH/PUT /chromosomes/1.json
  def update
    respond_to do |format|
      if @chromosome.update(chromosome_params)
        format.html { redirect_to @chromosome, notice: 'Chromosome was successfully updated.' }
        format.json { render :show, status: :ok, location: @chromosome }
      else
        format.html { render :edit }
        format.json { render json: @chromosome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chromosomes/1
  # DELETE /chromosomes/1.json
  def destroy
    @chromosome.destroy
    respond_to do |format|
      format.html { redirect_to chromosomes_url, notice: 'Chromosome was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chromosome
      @chromosome = Chromosome.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chromosome_params
      params.require(:chromosome).permit(:name)
    end
end
