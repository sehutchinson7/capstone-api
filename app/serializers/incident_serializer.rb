class IncidentSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :date, :robbery_type, :description
  has_one :user
end
