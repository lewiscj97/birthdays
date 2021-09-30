require 'birthday_list'
require 'date'

describe BirthdayList do

    let(:birthday) { double :birthday, name: 'Lewis', date: Date.new(1997,3,18) } 
    let(:steve_birthday) { double :birthday, name: 'Steve', date: Date.new(2001,9,30) } 
    let(:birthday_class) { double :birthday_class }

    before(:each) do
        allow(birthday_class).to receive(:new).with('Lewis', '18/03/1997') { birthday }
        @subject = BirthdayList.new(birthday_class)
    end

    describe "#initilaize" do
        it "has a empty birthday list on initialization" do
            expect(subject.birthday_list).to eq []
        end
    end

    describe '#add_drithday' do
        it 'should add a birthday' do
            @subject.add_birthday('Lewis', '18/03/1997')
            expect(@subject.birthday_list).to include(birthday)
        end
    end

    describe '#display_birthdays' do
        it 'shows a birthday in a tidy format' do
            @subject.add_birthday('Lewis', '18/03/1997')
            expect(@subject.display_birthdays).to eq('Name: Lewis, Birthday: 18/03/1997')
        end

        it 'shows multiple birthdays in a tidy format' do
            @subject.add_birthday('Lewis', '18/03/1997')
            allow(birthday_class).to receive(:new).with('Steve', '30/09/2001') { steve_birthday }
            @subject.add_birthday('Steve', '30/09/2001')
            expect(@subject.display_birthdays).to eq("Name: Lewis, Birthday: 18/03/1997\nName: Steve, Birthday: 30/09/2001")
        end

    end

    describe '#birthday_today' do
        it "will return a birthday if the birthday is today" do
            allow(birthday_class).to receive(:new).with('Steve', '30/09/2001') { steve_birthday }
            allow(steve_birthday).to receive(:date) {Date.new(2001,9,30)}
            @subject.add_birthday('Steve', '30/09/2001')
            expect(@subject.birthday_today).to eq "It's Steve's birthday today! They are 20 years old!"

        end
    end
end