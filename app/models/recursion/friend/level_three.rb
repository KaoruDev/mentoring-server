module Recursion
  class Friend
    class LevelThree
      include GenerateFriend

      def initialize
        @marker_count = 0
        super
      end

      def create_fake_friends
        root_friends(rand(2..4)).each do |friend|
          create_friends_for(rand(1..3), friend) do |new_friend|
            randomly_create_friends_for(friend)
            randomly_create_friends_for(new_friend)
          end
        end
      end

      def create_friend(name = nil)
        if rand(1..3).odd?
          super
        else
          @count = @count + 1
          @marker_count = @marker_count + 1
          Friend.new(nil, marker_company)
        end
      end

      def marker_company
        "Mass Relevance"
      end

      def marker(serialize = false)
        {
          company: marker_company,
          count: @marker_count
        }
      end

    end
  end
end
