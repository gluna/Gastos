class ReceitaController < ApplicationController
  before_action :set_receita, only: [:show, :edit, :update, :destroy]

  # GET /receita
  # GET /receita.json
  def index
    @receita = Receita.order(dtreceita: :desc)
  end

  # GET /receita/1
  # GET /receita/1.json
  def show
  end

  # GET /receita/new
  def new
    @receita = Receita.new
  end

  # GET /receita/1/edit
  def edit
  end

  # POST /receita
  # POST /receita.json
  def create
    @receita = receita.new(receita_params)

    respond_to do |format|
      if @receita.save
        format.html { redirect_to @receita, notice: 'receita was successfully created.' }
        format.json { render :show, status: :created, location: @receita }
      else
        format.html { render :new }
        format.json { render json: @receita.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receita/1
  # PATCH/PUT /receita/1.json
  def update
    respond_to do |format|
      if @receita.update(receita_params)
        format.html { redirect_to @receita, notice: 'receita was successfully updated.' }
        format.json { render :show, status: :ok, location: @receita }
      else
        format.html { render :edit }
        format.json { render json: @receita.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receita/1
  # DELETE /receita/1.json
  def destroy
    @receita.destroy
    respond_to do |format|
      format.html { redirect_to receita_url, notice: 'receita was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receita
      @receita = receita.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receita_params
      params.require(:receita).permit(:dtreceita, :tipo_receita_id, :valor)
    end
end
