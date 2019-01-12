class SongDataSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :songdata

end
