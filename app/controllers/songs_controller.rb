class SongsController < ApplicationController
  def new
    @song = Song.new

  end

  def create
      #raise params.inspect
      @song = Song.new
      @song.name = params[:song][:name]
      @song.save
      redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
    #raise @song.name.inspect
    #puts "im here!"
    #puts @song.name
  end


end
