class Note < ApplicationRecord
  belongs_to :station
  has_one_attached :file, dependent: :destroy
end

# note.file.attachment.blob.filename
