class ItemSerializer < ActiveModel::Serializer
  attributes :id, :to_do, :created_at
  
  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
  
  
end
