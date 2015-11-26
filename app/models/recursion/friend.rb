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

    def initialize(name=nil, company_name=nil)
      @name = name
      @company_name = company_name
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

    def company_name
      @company_name ||= Faker::App.name
    end

  end
end
