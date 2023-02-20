class Gradebook
  attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    list = {}
    @courses.each do |course|
      list[course] = course.students
    end
    list
  end

end
