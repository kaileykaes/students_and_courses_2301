require './lib/course'
require './lib/student'

RSpec.describe Course do
  describe '#initialize' do
    it 'exists' do
      course = Course.new("Calculus", 2)
      expect(course).to be_a(Course)
    end
    
    it 'has space for students' do
      course = Course.new("Calculus", 2)
      expect(course.students).to eq([])
    end

    it 'enrolls students' do 
      course = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      course.enroll(student1)
      course.enroll(student2)
      expect(course.students).not_to eq(nil)
    end

    it 'is full at capacity' do
      course = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      course.enroll(student1)
      course.enroll(student2)
      expect(course.full?).to eq(true)
    end
  end
end