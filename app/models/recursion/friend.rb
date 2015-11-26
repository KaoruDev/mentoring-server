module Recursion
  class Friend
    LEVEL_MAP = {
      "1" => LevelOne,
      "2" => LevelTwo,
      "3" => LevelThree
    }

    def self.create(level)
      LEVEL_MAP[level].new.create_fake_friends
    end

    attr_reader :id, :friends

    def initialize(name=nil)
      @friends = []
      @name = nil
    end

    def name
      @name ||= Faker::Name.name
    end

    def friends_count
      friends.count
    end

    def read_attribute_for_serialization(key)
      public_send(key)
    end

  end
end
