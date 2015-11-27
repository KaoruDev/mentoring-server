module Recursion
  class LevelSerializer < ActiveModel::Serializer
    attributes :friends, :meta

    def friends
      object.root_friends.map do |root_friend|
        FriendSerializer.new(root_friend, root: false)
      end
    end

    def meta
      {
        total_count: object.count,
        marker: FriendSerializer.new(object.marker, root: false)
      }
    end

  end
end
