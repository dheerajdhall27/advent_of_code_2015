# Created by Dheeraj Dhall - 12/03/2020

# This class is used to find the correct floor for the movement of Santa
# also to find the position in the data where santa reaches the basement
# Santa moves up if the char is '(' and down if the char is ')'
class SantaFloor

    def initialize
        file = File.open("input.rtf")
        @file_data = file.read
    end

    # This method gives the floor santa would end up on
    # after the running through the entire data
    def get_floor
        arr = @file_data.split("")
        floor = 0
        arr.each do |item|
            if item == "("
                floor += 1
            else
                floor -= 1
            end
        end
        floor
    end

    # This method gives the position in the data where Santa ends at floor -1(basement)
    def get_basement_floor_position
        arr = @file_data.split("")
        floor = 0
        count = 1
        arr.each do |item|
            if item == "("
                floor += 1
            else
                floor -= 1
            end

            break if floor < 0
            count += 1
        end
        count
    end
end

t = SantaFloor.new
puts t.get_floor
puts t.get_basement_floor_position


