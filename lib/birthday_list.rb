class BirthdayList 
    attr_reader :birthday_list

    def initialize(birthday = Birthday)
        @birthday_list = []
        @current_birthday = Birthday
    end

    def add_birthday(name, birthday)
        @birthday_list << @current_birthday.new(name, birthday)
    end
end