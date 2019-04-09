class GenresController < ApplicationController

  def new
    @genre = Genre.new
    #raise params.inspect
  end

  def create
      #raise params.inspect
      @genre = Genre.new
      @genre.name = params[:genre][:name]
      @genre.save
      redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
    #raise @genre.name.inspect
    #puts "im here!"
    #puts @genre.name
  end

  def edit
    @genre = Genre.find(params[:id])
    #raise params.inspect

  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(name: params[:genre][:name])
    redirect_to genre_path(@genre)
  end



end
