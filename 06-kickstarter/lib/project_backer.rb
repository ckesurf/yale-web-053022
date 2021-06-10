require "pry"

class ProjectBacker
  attr_reader :project, :backer
  @@all = []

  def initialize(project, backer)
    @project = project
    @backer = backer

    @@all << self
  end

  #   outside of any method, self is going to be the class, ProjectBacker

  def ProjectBacker.all
    # self in here is going to be the class
    @@all
  end
end

# pb = ProjectBacker.new("project 1", "backer 1")
# binding.pry
