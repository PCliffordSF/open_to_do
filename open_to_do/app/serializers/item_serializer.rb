class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :created_at, :completed
  
  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
  
  
end


