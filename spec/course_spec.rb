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
  end
end