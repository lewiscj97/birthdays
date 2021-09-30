require 'birthday_list'

describe BirthdayList do
    describe "#initilaize" do
        it "has a empty birthday list on initialization" do
            expect(subject.birthday_list).to eq []
        end
    end
end