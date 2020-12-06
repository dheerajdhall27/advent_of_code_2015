# Create by Dheeraj Dhall - 12/03/2020

require '../common/file_reader'

# This class is to calculate the presents distributed by santa
# followin the directions provided
class Presents

    def initialize
        @file_data = FileReader.new.get_file_data("input.rtf")
    end


    # This method is used to caluclate the number of houses that have at least one present
    # Santa follow the 
    def get_number_of_houses_with_one_present
        house = {}
        
        row = 0
        col = 0
        
        house[row.to_s + 'r' + col.to_s] = 1
        directions = @file_data.split("")

        directions.each do |dir|
            if dir == "^"
                row -= 1
            elsif dir == ">"
                col +=1
            elsif dir == "v"
                row += 1
            else
                col -= 1
            end
            house[row.to_s + 'r' + col.to_s] = 1
        end
        house.count
    end

    # This method is used to caluclate the number of houses that have at least one present
    # but this is with a bot included
    def get_number_of_houses_with_one_present_with_robot
        house = {}

        santa_row = 0
        santa_col = 0

        robot_row = 0
        robot_col = 0

        count = 0

        house[santa_row.to_s + 'r' + santa_col.to_s] = 1
        directions = @file_data.split("")

        directions.each do |dir| 
            if dir == "^"
                santa_row -= 1 if count % 2 == 0
                robot_row -= 1 if count % 2 != 0
            elsif dir == ">"
                santa_col += 1 if count % 2 == 0
                robot_col += 1 if count % 2 != 0
            elsif dir == "v"
                santa_row += 1 if count % 2 == 0
                robot_row += 1 if count % 2 != 0
            else
                santa_col -= 1 if count % 2 == 0
                robot_col -= 1 if count % 2 != 0
            end

            house[santa_row.to_s + 'r' + santa_col.to_s] = 1 if count % 2 == 0
            house[robot_row.to_s + 'r' + robot_col.to_s] = 1 if count % 2 != 0
            count += 1
        end
        house.count
    end
end

p = Presents.new
# puts p.get_number_of_houses_with_one_present
puts p.get_number_of_houses_with_one_present_with_robot