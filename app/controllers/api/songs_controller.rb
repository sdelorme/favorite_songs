class Api::SongsController < ApplicationController
  def index
    @index = Song.all
    render 'index.json.jb'
  end
  def create
    @song = Song.new(
      title: params[:title],
      artist: params[:artist],
      album: params[:album],
      year: params[:year],
    )
    @song.save
    render 'show.json.jb'
  end
  def show
    if params[:id].to_i < Song.count
      @song = Song.find_by(id: params[:id])
    else
      @song = Song.new
    end
    render 'show.json.jb'
  end
  def update
    @song = Song.find_by(id: params[:id])
    @song.title = params[:song] || @song.title
    @song.artist = params[:artist] || @song.artist
    @song.album = params[:album] || @song.album
    @song.year = params[:year] || @song.year
    @song.save
    render 'show.json.jb'
  end
  
end
