class V1::SongsController < ApplicationController
  def index
    @songs = Song.all

    render json: @songs, status: :ok
  end
end
