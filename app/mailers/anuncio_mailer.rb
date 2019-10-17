class AnuncioMailer < ApplicationMailer
default from: 'notify.zimobi@gmail.com'
   
    def anuncio_request
      @user = params[:user]
      @anuncio = params[:anuncio]
      @email = params[:user_email]
      mail(to: @user.email, subject: 'Alguém tem interesse no seu anúncio!!')
    end
end
