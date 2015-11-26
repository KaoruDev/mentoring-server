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
      increment_count
      Friend.new(name)
    end

    def create_friends_for(count, friend)
      count.times do
        new_friend = create_friend
        yield(new_friend) if block_given?
        friend.friends << new_friend
      end
    end

    def increment_count
      @count = @count + 1
    end

    def marker
    end

    def read_attribute_for_serialization(key)
      public_send(key)
    end

  end
end
