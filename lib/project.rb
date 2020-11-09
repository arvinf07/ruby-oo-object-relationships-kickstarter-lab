require 'pry'

class Project

  attr_reader :title
  @@all = []


  def initialize(title)
    @title = title
    @@all << self
  end  

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end  

  def self.all
    @@all
  end  

  def backers
    p = ProjectBacker.all.select {|project| project.project == self}
    p.collect {|project| project.backer}
  end  

end  