module Recursion
  class Friend
    class LevelOne
      include GenerateFriend

      def create_fake_friends
        3.times do
          root_friend.friends << create_friend
        end

        root_friend
      end

      def marker
        Friend.new("Tom Hanks")
      end

    end
  end
end
