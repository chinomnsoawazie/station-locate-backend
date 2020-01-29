class NoteSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers 
  attributes :id, :station_id, :text, :file_url

  def file_url
    return rails_blob_url(object.file)
  end 
end
