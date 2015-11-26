module Recursion
  class FriendSerializer < ActiveModel::Serializer
    attributes :name, :friends_count

    has_many :friends
  end
end
