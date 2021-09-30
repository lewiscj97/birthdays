describe Birthday do
  describe '#initialize' do
    it 'stores the name and birthday' do
      birthday = Birthday.new('Lewis', '18/03/1997')
      expect(birthday.name).to eq 'Lewis'
      expect(birthday.date.year).to eq Date.new(1997,3,18).year
      expect(birthday.date.mon).to eq Date.new(1997,3,18).mon
      expect(birthday.date.mday).to eq Date.new(1997,3,18).mday
    end
  end
end