class TipoGastosController < ApplicationController
  before_action :set_tipo_gasto, only: [:show, :edit, :update, :destroy]

  # GET /tipo_gastos
  # GET /tipo_gastos.json
  def index
    @tipo_gastos = TipoGasto.all
  end

  # GET /tipo_gastos/1
  # GET /tipo_gastos/1.json
  def show
  end

  # GET /tipo_gastos/new
  def new
    @tipo_gasto = TipoGasto.new
  end

  # GET /tipo_gastos/1/edit
  def edit
  end

  # POST /tipo_gastos
  # POST /tipo_gastos.json
  def create
    @tipo_gasto = TipoGasto.new(tipo_gasto_params)

    respond_to do |format|
      if @tipo_gasto.save
        format.html { redirect_to @tipo_gasto, notice: 'Tipo gasto was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_gasto }
      else
        format.html { render :new }
        format.json { render json: @tipo_gasto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_gastos/1
  # PATCH/PUT /tipo_gastos/1.json
  def update
    respond_to do |format|
      if @tipo_gasto.update(tipo_gasto_params)
        format.html { redirect_to @tipo_gasto, notice: 'Tipo gasto was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_gasto }
      else
        format.html { render :edit }
        format.json { render json: @tipo_gasto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_gastos/1
  # DELETE /tipo_gastos/1.json
  def destroy
    @tipo_gasto.destroy
    respond_to do |format|
      format.html { redirect_to tipo_gastos_url, notice: 'Tipo gasto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_gasto
      @tipo_gasto = TipoGasto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_gasto_params
      params.require(:tipo_gasto).permit(:descricao)
    end
end
