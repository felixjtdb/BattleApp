class Player
  attr_reader :name, :hp
  DEFAULT_HP = 60
  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attacked
    @hp -= Kernel.rand(10)
  end
end
