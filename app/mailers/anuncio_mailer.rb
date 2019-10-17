class AnuncioMailer < ApplicationMailer
default from: 'notify.zimobi@gmail.com'
   
    def anuncio_request
      @user = params[:user]
      @anuncio = params[:anuncio]
      @email = params[:user_email]
      mail(to: @user.email, subject: 'Comprar Anúncio')
    end

    def myself_request
      @user = params[:user]
      @anuncio = params[:anuncio]
      mail(to: @user.email, subject: 'Compra Iniciada')
    end
end
