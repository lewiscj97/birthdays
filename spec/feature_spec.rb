require 'birthday_list'

describe BirthdayList do

  context 'Happy Path' do
    it 'add birthdays and displays them in tidy format' do
      subject.add_birthday('Lewis', '18/03/1997')
      subject.add_birthday('Steve', '30/09/2001')
      subject.display_birthdays
    end
  end
end