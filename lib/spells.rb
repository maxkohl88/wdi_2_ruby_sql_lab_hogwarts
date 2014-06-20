class Spell
  attr_reader :name, :incantation
  attr_accessor :category, :level

  def initialize(name:, incantation:, category:, level: 1)
    @name, @incantation, @category, @level = name, incantation, category, level

    @students = []
  end
end
