class UserSerializer < ActiveModel::Serializer
    has_one :collection
    attributes :name, :email, :id, :collection
end
