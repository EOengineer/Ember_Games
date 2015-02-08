class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :bad_guy, :project_id
end
