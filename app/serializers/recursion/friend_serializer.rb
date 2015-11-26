module Recursion
  class FriendSerializer < ActiveModel::Serializer
    attributes :name, :friends_count, :company_name

    has_many :friends
  end
end
