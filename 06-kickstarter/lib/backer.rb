require "pry"
require_relative "project_backer"
require_relative "project"

class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  # A backer has many project_backers
  def project_backers
    # find all of the project backers for this backer
    ProjectBacker.all.select do |pb_instance|
      pb_instance.backer == self
    end
  end

  # instance method - self will always be an instance/object
  # A backer has many projects through project_backers
  def backed_projects
    # from each of this backer's project backers,
    # pull out the projects
    self.project_backers.map { |pb_instance| pb_instance.project }
  end
end

# backer_inst = Backer.new('raffy')
# backer_inst.back_project(proj) ✅

# backer_inst.backed_projects ✅

# proj_inst = Project.new("test")

# Backer.backer_inst(proj) 🚫
# proj_inst.back_project(proj) 🚫

# binding.pry
