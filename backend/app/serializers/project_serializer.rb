class ProjectSerializer < ActiveModel::Serializer
  embed :ids, :include => true
  attributes :id, :name, :description
  has_many :characters#, embed: :ids
end
