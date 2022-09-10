class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  # GET /movies
  get '/movies' do
    # get movies from the database
    movies = Movie.all.order(:created_at)
    # return JSON response with an array of movies
    movies.to_json
  end

  # POST /comment
      # post '/reviews' do
      #   movie = Movie.create(title: params[:title], overview: params[:overview], vote_average: params[:vote_average])
      #   movies.to_json
      # end

  # DELETE /movies
      delete '/reviews/:id' do
        movie = Movie.find(params[:id])
        movie.destroy
      end

      get '/reviews' do
        reviews = Review.all
        reviews.to_json
      end
            # POST /comment
      post '/reviews' do
        reviews = Review.create(name: params[:name], comments: params[:comments])
        reviews.to_json
      end

end
