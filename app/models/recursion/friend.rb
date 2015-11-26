module Recursion
  class Friend
    LEVEL_MAP = {
      "1" => LevelOne,
      "2" => LevelTwo,
      "3" => LevelThree
    }

    def self.create(level)
      level = LEVEL_MAP[level].new
      level.create_fake_friends
      level
    end

    attr_reader :id, :friends

    def initialize(name=nil)
      @name = name
      @friends = []
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
