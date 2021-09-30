require 'date'

class Birthday
    attr_reader :name, :date

    def initialize(name, date)
        @name = name
        @date = Date.strptime(date, '%d/%m/%Y')
    end
end