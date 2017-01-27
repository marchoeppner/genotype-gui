class GenotypesController < ApplicationController
  before_action :set_genotype, only: [:show, :edit, :update, :destroy]

  # GET /genotypes
  # GET /genotypes.json
  def index
    @genotypes = Genotype.all
  end

  # GET /genotypes/1
  # GET /genotypes/1.json
  def show
  end

  # GET /genotypes/new
  def new
    @genotype = Genotype.new
    @diagnoses = Diagnosis.all
    @chromosomes = Chromosome.all
  end

  # GET /genotypes/1/edit
  def edit
  end

  # POST /genotypes
  # POST /genotypes.json
  def create
    @genotype = Genotype.new(genotype_params)

    respond_to do |format|
      if @genotype.save
        format.html { redirect_to @genotype, notice: 'Genotype was successfully created.' }
        format.json { render :show, status: :created, location: @genotype }
      else
        format.html { render :new }
        format.json { render json: @genotype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genotypes/1
  # PATCH/PUT /genotypes/1.json
  def update
    respond_to do |format|
      if @genotype.update(genotype_params)
        format.html { redirect_to @genotype, notice: 'Genotype was successfully updated.' }
        format.json { render :show, status: :ok, location: @genotype }
      else
        format.html { render :edit }
        format.json { render json: @genotype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genotypes/1
  # DELETE /genotypes/1.json
  def destroy
    @genotype.destroy
    respond_to do |format|
      format.html { redirect_to genotypes_url, notice: 'Genotype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genotype
      @genotype = Genotype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genotype_params
      params.require(:genotype).permit(:chromosome, :position, :reference, :allele, :genotype, :comment, :diagnosis_id)
    end
end
