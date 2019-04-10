class SongsController < ApplicationController

  def index
    @songs = Song.all
    #raise Song.all.first.name.inspect
  end

  def new
    @song = Song.new

  end

  def create
      #raise params.inspect
      @song = Song.new(song_params)
      @song.save
      redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
    #raise @song.name.inspect
    #puts "im here!"
    #puts @song.name
  end

  def edit
    @song = Song.find(params[:id])
    #raise params.inspect

  end

  def update
    @song = Song.find(params[:id])
    @song.update(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:name, :genre_id, :artist_id)
  end

end
