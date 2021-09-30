require 'birthday_list'

describe BirthdayList do

  context 'Happy Path' do
    it 'add birthdays and displays them in tidy format' do
      subject.add_birthday('Lewis', '18/03/1997')
      subject.add_birthday('Steve', '30/09/2001')
      expect(subject.display_birthdays).to eq "Name: Lewis, Birthday: 18/03/1997\nName: Steve, Birthday: 30/09/2001"
    end

    it 'returns a nice message if there is a birthday today' do
      subject.add_birthday('Lewis', '18/03/1997')
      subject.add_birthday('Steve', '30/09/2001')
      expect(subject.birthday_today).to eq "It's Steve's birthday today! They are 20 years old!"
    end
  end
end