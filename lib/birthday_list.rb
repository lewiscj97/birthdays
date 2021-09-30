class BirthdayList 
    attr_reader :birthday_list

    def initialize(birthday = Birthday)
        @birthday_list = []
        @current_birthday = Birthday
    end

    
end