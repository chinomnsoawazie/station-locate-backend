class Note < ApplicationRecord
  belongs_to :station
  has_one_attached :file
end

# note.file.attachment.blob.filename
