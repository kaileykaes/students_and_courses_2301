require './lib/gradebook'
require '.lib/student'
require './lib/course'

RSpec.describe Gradebook do
  describe '#initialize' do
    it 'exists' do
      gradebook = Gradebook.new('Keith Ward')
      expect(gradebook).to be_a(gradebook)
    end
  end
end
