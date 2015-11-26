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

      def randomly_create_friends_for(friend)
        if rand(1..5) > 3
          create_friends_for(rand(1..2), friend) do |new_friend|
            randomly_create_friends_for(new_friend)
          end
        end
      end
    end
  end
end
