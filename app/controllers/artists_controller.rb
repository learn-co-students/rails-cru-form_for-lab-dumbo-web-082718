class ArtistsController < ApplicationController

  def new
      @artist = Artist.new
  end

  def create

  #raise params.inspect
  @artist = Artist.new
  @artist.name = params[:artist][:name]
  @artist.bio = params[:artist][:bio]
  @artist.save
  redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:id])

    #raise params.inspect
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(name: params[:artist][:name],bio: params[:artist][:bio])
    redirect_to artist_path(@artist)
  end

  def show
    @artist = Artist.find(params[:id])
  end

end
