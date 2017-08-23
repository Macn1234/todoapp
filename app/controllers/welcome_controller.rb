class WelcomeController < ApplicationController
    
    def index
     puts "Hola mundo"
     @nombre = "camilo"
     @array = [1,2,3,4]
    end
end
