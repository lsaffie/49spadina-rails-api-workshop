class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :first_name

  has_many :reviews

  def name
    "#{object.first_name} #{object.last_name}"
  end
end
