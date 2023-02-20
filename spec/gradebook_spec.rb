require './lib/gradebook'
require './lib/student'
require './lib/course'

RSpec.describe Gradebook do
  describe '#initialize' do
    it 'exists' do
      gradebook = Gradebook.new('Keith Ward')
      expect(gradebook).to be_a(Gradebook)
    end

    it 'has attributes' do
      gradebook = Gradebook.new('Keith Ward')
      expect(gradebook.courses).to eq([])
      expect(gradebook.instructor).to eq('Keith Ward')
    end
  end

  describe '#behavior' do
    it 'adds courses' do
      gradebook = Gradebook.new('Keith Ward')
      course = Course.new("Calculus", 2)
      gradebook.add_course(course)
      expect(gradebook.courses).to eq([course])
    end

    it 'lists all students' do 
      gradebook = Gradebook.new('Keith Ward')
      course = Course.new("Calculus", 2)
      course1 = Course.new("Steel Drum Ensemble", 15)
      student = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      gradebook.add_course(course)
      gradebook.add_course(course1)
      course1.enroll(student)
      course.enroll(student2)
      expect(gradebook.list_all_students).to eq({course => [student2], course1 => [student]})
    end

    it 'returns students with low grades'
    
  end
end
