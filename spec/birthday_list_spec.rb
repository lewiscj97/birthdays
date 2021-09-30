require 'birthday_list'

describe BirthdayList do

    let(:birthday) { double :birthday, name: 'Lewis', birthday: '18/03/1997' } 
    let(:steve_birthday) { double :birthday, name: 'Steve', birthday: '10/04/2001' } 
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
            allow(birthday_class).to receive(:new).with('Steve', '10/04/2001') { steve_birthday }
            @subject.add_birthday('Steve', '10/04/2001')
            expect(@subject.display_birthdays).to eq("Name: Lewis, Birthday: 18/03/1997\nName: Steve, Birthday: 10/04/2001")
        end

    end
end