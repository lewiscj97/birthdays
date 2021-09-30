class BirthdayList 
    attr_reader :birthday_list

    def initialize(birthday = Birthday)
        @birthday_list = []
        @current_birthday = birthday
    end

    def add_birthday(name, birthday)
        @birthday_list << @current_birthday.new(name, birthday)
    end

    def display_birthdays
      birthdays = @birthday_list.map { |birthday| "Name: #{birthday.name}, Birthday: #{birthday.birthday}"}
      birthdays.join("\n")
    end
end