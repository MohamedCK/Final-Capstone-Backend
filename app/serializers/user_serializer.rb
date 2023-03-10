class UserSerializer < ActiveModel::Serializer 
  attributes :id, :name, :email 
  attribute :role, if: :admin? 

  def admin_role? 
    object.admin? 
  end
end