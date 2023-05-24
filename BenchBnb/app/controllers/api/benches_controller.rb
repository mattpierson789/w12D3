class Api::BenchesController < ApplicationController

    def index
        @benches = Bench.all
        render 'benches/index.json.jbuilder'
      end
      


    def create

    @bench = Bench.find(params[:id])

    if  @bench.save!
    
        render json: {bench: @bench}

    else 

       render json: { errors: @bench.errors.full_messages}, status: 422, message: "unprocessable_entity" 

    end 


    end 


    def show

     @bench = Bench.find(params[:id])

     render 'benches/show.json.jbuilder'

    end


    def bench_params 

         params.require(:bench).permit(:title, :description, :price, :seating, :lat, :lng)

    end 
end
