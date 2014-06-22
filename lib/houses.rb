class House
  attr_reader :name, :animal
  attr_accessor :points

  def initialize(name:, animal:, points: 0)
    @name, @animal, @points = name, animal, points

    @students = []
  end

  def add_student(student)
    @students << student
  end
end