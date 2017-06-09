class UserSerializer < ActiveModel::Serializer
 attributes :id, :created_at, :password, :email, :name, :username


  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
  

end
