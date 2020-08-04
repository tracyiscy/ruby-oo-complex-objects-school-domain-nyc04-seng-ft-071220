("Jeff Baird", 10)
("Blake Johnson", 10)

def add_student(student_name,grade_level)
    self.roster[grade_level] = []
    if self.roster.key?(grade_level)
        
    else
    self.roster[grade_level] << student_name
    

    end
end