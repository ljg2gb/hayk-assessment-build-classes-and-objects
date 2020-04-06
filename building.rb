class Building
    attr_accessor :name, :number_of_tenants
    attr_reader :address, :number_of_floors

    @@all = []

    def initialize (name, address, number_of_floors, number_of_tenants)
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants
        @@all << self
    end

    def self.all
        @@all
    end

    def self.avg_number_of_tenants
        tenants = all.reduce(0) do |acc, building|
            acc += building.number_of_tenants
        end
        tenants/(all.length)
    end

    def placard
        "#{name}, #{address}."
    end

    def avg_number_of_tenants_per_floor
        number_of_tenants/number_of_floors
    end
end