# frozen_string_literal: true

class Types::CoordinatesType < Types::BaseObject
  description 'Coordinates in space'

  field :latitude, Float, null: true, description: 'Latitude'
  field :longitude, Float, null: true, description: 'Longitude'

  def latitude
    object.first
  end

  def longitude
    object.last
  end
end
