class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :project_id, :minutes, :description
end
