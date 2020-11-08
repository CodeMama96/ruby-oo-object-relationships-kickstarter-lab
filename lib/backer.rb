class Backer
    
    attr_accessor :name, :backed_projects, :project

    def initialize(name)
        @name = name 
        @backed_projects = []
    end

    def back_project(project)
        ProjectBacker.new(project, self)
        # @backed_projects <<  project
        # project.backers << self
        #build an instance method that returns lal the projects associated with this Backer instance
    end

    def backed_projects
        var = ProjectBacker.all.select do |bp|
           bp.backer == self
        end 
        var.collect do |bp|
            bp.project 
        end
    end
end