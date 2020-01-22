class NotesController < ApplicationController

    def index
        notes = Note.all.with_attached_file
        render json: notes
    end


    def create
        # byebug
        note = Note.create!(note_params)
        if note.valid?
            render json: Note.all.with_attached_file
        else 
            render json: {error: 'Note not created'}, status: :unprocessable_entity
        end
    end



    private
    def note_params
        params.require(:note).permit(:station_id, :text, :file)
    end
end
