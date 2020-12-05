# Create by Dheeraj Dhall - 12/03/2020


# This class is used to calculate the total are of the wrapping paper required
class WrappingPaper

    def initialize
        file = File.open("input.rtf")
        @file_data = file.read
    end

    def get_total_area
        rows = @file_data.split("\n")
        total_area = 0
        rows.each do |row|
            dimensions = row.split("x")
            side_a = dimensions[0].to_i * dimensions[1].to_i
            side_b = dimensions[1].to_i * dimensions[2].to_i
            side_c = dimensions[2].to_i * dimensions[0].to_i
            area = 2 * (side_a + 
                        side_b + 
                        side_c)
            
            area += [side_a, side_b, side_c].min
            total_area += area
        end
        total_area
    end


    def get_ribbon_required
        rows = @file_data.split("\n")
        total_ribbon_length = 0

        total_length = 0
        rows.each do |row|
            dimensions = row.split("x")

            sides = [dimensions[0].to_i, dimensions[1].to_i, dimensions[2].to_i].sort

            len = 2 * (sides[0] + sides[1])

            area = sides[0] * sides[1] * sides[2]
            total_length += len + area
        end
        total_length
    end
end

wp = WrappingPaper.new
puts wp.get_total_area
puts wp.get_ribbon_required