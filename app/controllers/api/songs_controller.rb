class Api::SongsController < ApplicationController
  def index
    @index = Song.all
    render 'index.json.jb'
  end
end
