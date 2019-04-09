class Bear

  attr_reader :name, :type
  attr_accessor :belly_contents

  def initialize(name, type, belly_contents)
    @name = name
    @type = type
    @belly_contents = belly_contents
  end


end
