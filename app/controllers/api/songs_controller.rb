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
end
