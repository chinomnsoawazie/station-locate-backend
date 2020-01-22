class NoteSerializer < ActiveModel::Serializer
  # line below enables access to the url helpers in the serializer 
  include Rails.application.routes.url_helpers 
  attributes :id, :station_id, :text, :file_url

  def file_url
    return rails_blob_url(object.file)
  end 
end
