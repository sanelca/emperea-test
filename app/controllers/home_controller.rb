class HomeController < ApplicationController
    def index
        @welcome = 'Welcome to home'
        print @welcome
    end
end