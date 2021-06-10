class Project
  attr_reader :title

  def initialize(name)
    @title = name
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  # project has many project_backers
  def project_backers
    # 1. we have to get all the projectBackers, filter them to
    # find only the projectBackers that reference self/the object that
    # invoked this method
    ProjectBacker.all.select { |pb_instance| pb_instance.project == self }
  end

  # project has many backers through project_backers
  def backers
    # 2. using the array of projectBackers of self, create another array
    # of just the projects that those projectBackers reference
    self.project_backers.map { |pb_instance| pb_instance.backer }
  end
end
