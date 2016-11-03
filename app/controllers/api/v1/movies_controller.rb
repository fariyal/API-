class Api::V1::MoviesController < ApplicationController

	
	def create
	  @movie=Movie.new(movie_params)
	  if @movie.save
	   render json: {message:"success",data:@movie,status_code:201}
      else
      	render json: {message:"failure",data:@movie.errors,status_code:422}
    end
  end
  def index
	  @movie=Movie.all
	  render json: {message:"success",data:@movie,status_code:201}
  end

  def update
	  @movie=Movie.find_by_id(params[:id])
		@movie.update_attributes(movie_params)
		render json: {message:"success",data:@user,status_code:201}
	end

	def show
		@movie=Movie.find_by_id(params[:id])
		render json: {message:"success",data:@movie,status_code:201}
	end

  def destroy
	  @movie=Movie.find_by_id(params[:id])
	  @user.destroy
	  render json: {message:"success",data:@movie,status_code:201}
	end

 private
  def movie_params
	  params.require(:movie).permit(:tittle,:year,:rating,:language,:actors,:director,:producer)      
  end

end



