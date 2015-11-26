module Recursion
  class Friend
    class LevelTwo
      include GenerateFriend

      def create_fake_friends
        root_friends(2).each do |root_friend|
          create_friends_for(3, root_friend) do |new_friend|
            create_friends_for(rand(1..3), new_friend) do |newer_friend|
              randomly_create_friends_for(newer_friend)
            end
          end
        end
      end

    end
  end
end
