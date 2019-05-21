class TipoReceitaController < ApplicationController
  before_action :set_tipo_receitum, only: [:show, :edit, :update, :destroy]

  # GET /tipo_receita
  # GET /tipo_receita.json
  def index
    @tipo_receita = TipoReceitum.all
  end

  # GET /tipo_receita/1
  # GET /tipo_receita/1.json
  def show
  end

  # GET /tipo_receita/new
  def new
    @tipo_receitum = TipoReceitum.new
  end

  # GET /tipo_receita/1/edit
  def edit
  end

  # POST /tipo_receita
  # POST /tipo_receita.json
  def create
    @tipo_receitum = TipoReceitum.new(tipo_receitum_params)

    respond_to do |format|
      if @tipo_receitum.save
        format.html { redirect_to @tipo_receitum, notice: 'Tipo receita was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_receitum }
      else
        format.html { render :new }
        format.json { render json: @tipo_receitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_receita/1
  # PATCH/PUT /tipo_receita/1.json
  def update
    respond_to do |format|
      if @tipo_receitum.update(tipo_receita_params)
        format.html { redirect_to @tipo_receitum, notice: 'Tipo receita was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_receitum }
      else
        format.html { render :edit }
        format.json { render json: @tipo_receitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_receita/1
  # DELETE /tipo_receita/1.json
  def destroy
    @tipo_receitum.destroy
    respond_to do |format|
      format.html { redirect_to tipo_receita_url, notice: 'Tipo receita was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_receitum
      @tipo_receitum = TipoReceitum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_receitum_params
      params.require(:tipo_receitum).permit(:descricao)
    end
end
