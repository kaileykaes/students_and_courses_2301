require 'rspec'
require './lib/student'

RSpec.describe Student do
  # before(:each) do 
  #   student = Student.new({name: "Morgan", age: 21})
  # end
  describe '#initialize' do 
    it 'exists' do 
      student = Student.new({name: "Morgan", age: 21})
      expect(student).to be_a(Student)
    end

    it 'has attributes' do 
      student = Student.new({name: "Morgan", age: 21})
      expect(student.name).to eq("Morgan")
      expect(student.age).to eq(21)
      expect(student.scores).to eq([])
    end
  end

  describe '#logs' do
    it 'logs student scores in @scores hash' do
      student = Student.new({name: "Morgan", age: 21})
      student.log_score(89)
      student.log_score(78)
      expect(student.scores).to eq([89, 78])
    end

    # xit 'calculates student average score'
    #   student = Student.new({name: "Morgan", age: 21})  
    #   student.log_score(89)
    #   student.log_score(78)
    #   expect(student.grade).to eq(83.5)
  end
end