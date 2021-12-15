class UsersController < ApplicationController
    require 'json'
    #Potencijalni dashboard korisnika
    def index
        @welcome = 'Welcome to home'
    end

    #Lista svih korisnika
    def list
        @list = User.all.to_json
    end

    #Pronadjeni korisnik
    def user
        @message = User.findUser(params[:id])
    end

    #Brisanje korisnika
    def delete
        @message = User.deleteUser(params[:id])
    end   

    #kreiranje korisnika
    def create
        @message = User.createUser(user_params)
    end 


    private
        def user_params
            params.require(:user).permit(:username, :mail, :password)
        end    
end