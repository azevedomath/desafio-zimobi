class AnunciosController < ApplicationController
  before_action :authenticate_user!
  before_action :get_anuncio, only: [:show, :edit, :update, :destroy]

  
  def index
    @anuncios = current_user.anuncio.all.order('created_at')
  end


  def show
  end

 
  def new
    @anuncio = Anuncio.new
  end

  
  def edit
  end

  
  def create
    @anuncio = current_user.anuncio.new(anuncio_params)

    respond_to do |format|
      if @anuncio.save
        format.html { redirect_to @anuncio, notice: 'Anúncio criado com sucesso!' }
        format.json { render :show, status: :created, location: @anuncio }
      else
        format.html { render :new }
        format.json { render json: @anuncio.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @anuncio.update(anuncio_params)
        format.html { redirect_to @anuncio, notice: 'Anúncio atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @anuncio }
      else
        format.html { render :edit }
        format.json { render json: @anuncio.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @anuncio.destroy
    respond_to do |format|
      format.html { redirect_to anuncios_url, notice: 'Anúncio deletado com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    
    def get_anuncio
      @anuncio = Anuncio.find(params[:id])
    end

    def anuncio_params
      params.require(:anuncio).permit(:title, :description, :image, :price)
    end
    
end
