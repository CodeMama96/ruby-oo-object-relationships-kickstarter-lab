class Project

    attr_accessor :title, :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        var = ProjectBacker.all.select do |bp|
            bp.project == self
         end 
         var.collect do |bp|
             bp.backer
         end
    end
end