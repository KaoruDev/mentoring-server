module Recursion
  module GenerateFriend

    def self.included(base)
      base.class_eval do
        attr_reader :count
      end
    end

    def initialize
      @count = 0
    end

    def root_friends( count = 1)
      return @root_friends if @root_friends

      @root_friends = count.times.map do
        create_friend
      end
    end

    def create_friend(name=nil)
      @count = @count + 1
      Friend.new(name)
    end

    def create_friends_for(count, friend)
      count.times do
        new_friend = create_friend
        yield(new_friend) if block_given?
        friend.friends << new_friend
      end
    end

    def randomly_create_friends_for(friend)
      if rand(1..5) > 3
        create_friends_for(rand(1..2), friend) do |new_friend|
          randomly_create_friends_for(new_friend)
        end
      end
    end

    def marker(serialize=false)
    end

    def read_attribute_for_serialization(key)
      public_send(key)
    end

  end
end
