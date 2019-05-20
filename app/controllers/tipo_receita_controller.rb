class TipoReceitaController < ApplicationController
  before_action :set_tipo_receita, only: [:show, :edit, :update, :destroy]

  # GET /tipo_receita
  # GET /tipo_receita.json
  def index
    @tipo_receita = TipoReceita.all
  end

  # GET /tipo_receita/1
  # GET /tipo_receita/1.json
  def show
  end

  # GET /tipo_receita/new
  def new
    @tipo_receita = TipoReceita.new
  end

  # GET /tipo_receita/1/edit
  def edit
  end

  # POST /tipo_receita
  # POST /tipo_receita.json
  def create
    @tipo_receita = TipoReceita.new(tipo_receita_params)

    respond_to do |format|
      if @tipo_receita.save
        format.html { redirect_to @tipo_receita, notice: 'Tipo receita was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_receita }
      else
        format.html { render :new }
        format.json { render json: @tipo_receita.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_receita/1
  # PATCH/PUT /tipo_receita/1.json
  def update
    respond_to do |format|
      if @tipo_receita.update(tipo_receita_params)
        format.html { redirect_to @tipo_receita, notice: 'Tipo receita was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_receita }
      else
        format.html { render :edit }
        format.json { render json: @tipo_receita.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_receita/1
  # DELETE /tipo_receita/1.json
  def destroy
    @tipo_receita.destroy
    respond_to do |format|
      format.html { redirect_to tipo_receita_url, notice: 'Tipo receita was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_receita
      @tipo_receita = TipoReceita.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_receita_params
      params.require(:tipo_receita).permit(:descricao)
    end
end
