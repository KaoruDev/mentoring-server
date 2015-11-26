module Recursion
  module GenerateFriend

    def self.included(base)
      base.class_eval do
        attr_reader :current_count
      end
    end

    def root_friend
      @root_friend ||= create_friend
    end

    def create_friend
      increment_count
      Friend.new()
    end

    def create_friends_for(count, friend)
      count.times do
        friend.friends << create_friend
      end
    end

    def increment_count
      @current_count ||= 0
      @current_count = @current_count + 1
    end
  end
end
