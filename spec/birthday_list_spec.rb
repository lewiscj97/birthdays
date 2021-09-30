require 'birthday_list'

describe BirthdayList do

    let(:birthday) { double :birthday } 
    let(:birthday_class) { double :birthday_class, new: birthday }

    before(:each) do
        @subject = BirthdayList.new(birthday_class)
    end

    describe "#initilaize" do
        it "has a empty birthday list on initialization" do
            expect(subject.birthday_list).to eq []
        end
    end

    describe '#add_drithday' do
    
        it 'should add a birthday' do
            subject.add_birthday('Lewis', '18/03/1997')
            expect(subject.birthday_list).to include(birthday)
        end
    end
end