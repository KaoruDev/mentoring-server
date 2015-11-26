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

      def marker
        @marker ||= create_friend("Tom Hanks")
      end

    end
  end
end
