class PlayablesController < ApplicationController
    def new
        @playable = Playable.new
        @artists = Artist.all
        @instruments = Instrument.all
    end

    def create
        @playable = Playable.new(playable_params)
        @playable.save
        redirect_to artist_path(@playable.artist)
    end

    private

    def playable_params
        params.require(:playable).permit(:artist_id, :instrument_id)
    end
end
