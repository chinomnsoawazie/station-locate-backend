class NotesController < ApplicationController

    def create
        note = Note.create!(note_params)
        if note.valid?
            render json: Note.all.with_attached_file
        else 
            render json: {error: 'Note not created'}, status: :unprocessable_entity
        end
    end

    def destroy
        Note.destroy(params[:id])
        render json: Note.all
    end

    private
    def note_params
        params.require(:note).permit(:id, :station_id, :text, :file)
    end
end
