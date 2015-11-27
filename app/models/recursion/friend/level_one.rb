module Recursion
  class Friend
    class LevelOne
      include GenerateFriend

      def create_fake_friends
        root_friends(1).each do |friend|
          create_friends_for(3, friend)
          friend.friends.last.friends << marker
        end
      end

      def marker(serialize=false)
        @marker ||= create_friend("Tom Hanks")

        if (serialize)
          FriendSerializer.new(@marker, root: false)
        else
          @marker
        end
      end

    end
  end
end
