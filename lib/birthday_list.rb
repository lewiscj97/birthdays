require_relative 'birthday'

class BirthdayList 
    attr_reader :birthday_list

    def initialize(birthday = Birthday)
        @birthday_list = []
        @birthday_class = birthday
    end

    def add_birthday(name, birthday)
        @birthday_list << @birthday_class.new(name, birthday)
    end

    def display_birthdays
      birthdays = @birthday_list.map { |birthday| "Name: #{birthday.name}, Birthday: #{birthday.date.strftime('%d/%m/%Y')}"}
      birthdays.join("\n")
    end

    def birthday_today
        @birthday_list.each do |birthday|
            if birthday_today?(birthday)
                return "It's #{birthday.name}'s birthday today! They are #{get_todays_date.year - birthday.date.year} years old!"
            end
        end
    end

    private

    def get_todays_date
        return Date.today
    end

    def birthday_today?(birthday)
        get_todays_date.mday == birthday.date.mday && get_todays_date.mon == birthday.date.mon
    end
end
