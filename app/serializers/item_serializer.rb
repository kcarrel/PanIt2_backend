class ItemSerializer < ActiveModel::Serializer
    belongs_to :collection
    attributes :id, :collection_id, :name, :brand, :product_type, :open_on, :expiration, :notes, :rating, :favorite
end
