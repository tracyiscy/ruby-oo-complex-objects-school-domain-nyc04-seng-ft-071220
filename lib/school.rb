# code here!
require 'pry'

class School
    # attr_accessor 
    attr_reader :name,:roster


    def initialize(name,roster={})
        @name=name
        @roster=roster
    end

    def roster=(new_roster)
        @roster.merge(add_student)
    end

    def add_student(student_name,grade_level)
        if @roster.include?(grade_level)
            self.roster[grade_level] << student_name
        else
            self.roster[grade_level] = []
            self.roster[grade_level] << student_name
        end     
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each{|grade_level,student_name|
            @roster[grade_level] = student_name.sort
            # binding.pry
        }
        return @roster
    end

end

# binding.pry
